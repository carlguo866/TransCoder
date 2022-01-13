# Copyright (c) 2019-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#
import string
import argparse
import logging
import os
import random
import re
import sys
import tokenize
from io import BytesIO
from time import time
import pyllvm
import clang
import preprocessing.src.javalang_tokenizer as javalang_tok
from clang.cindex import TokenKind
from preprocessing.src.timeout import timeout, TimeoutError
from sacrebleu import tokenize_v14_international

TOK_NO_SPACE_BEFORE = {',', ';'}
clang.cindex.Config.set_library_file('/usr/lib/llvm-10/lib/libclang-10.so')
STRINGS_AND_COMMENTS_TOKEN_KINDS = {TokenKind.LITERAL, TokenKind.COMMENT}
logging.basicConfig(
    filename='timeout_cpp_tokenizer_examples.log', level=logging.DEBUG)

idx = clang.cindex.Index.create()

JAVA_TOKEN2CHAR = {'STOKEN0': "//",
                   'STOKEN1': "/*",
                   'STOKEN2': "*/",
                   'STOKEN3': "/**",
                   'STOKEN4': "**/",
                   'STOKEN5': '"""',
                   'STOKEN6': '\\n'
                   }
JAVA_CHAR2TOKEN = {"//": ' STOKEN0 ',
                   "/*": ' STOKEN1 ',
                   "*/": ' STOKEN2 ',
                   "/**": ' STOKEN3 ',
                   "**/": ' STOKEN4 ',
                   '"""': ' STOKEN5 ',
                   '\\n': ' STOKEN6 '
                   }

CPP_TOKEN2CHAR = JAVA_TOKEN2CHAR.copy()
CPP_CHAR2TOKEN = JAVA_CHAR2TOKEN.copy()

PYTHON_TOKEN2CHAR = {'STOKEN0': '#',
                     'STOKEN1': "\\n",
                     'STOKEN2': '"""',
                     'STOKEN3': "'''"
                     }

PYTHON_CHAR2TOKEN = {'#': ' STOKEN0 ',
                     "\\n": ' STOKEN1 ',
                     '"""': ' STOKEN2 ',
                     "'''": ' STOKEN3 '
                     }


#setups for llvm tokenizer
LLVM_TOKEN2CHAR = {}
LLVM_CHAR2TOKEN = {}

strings = frozenset([pyllvm.lltok.StringConstant,
                pyllvm.lltok.DwarfTag,
                pyllvm.lltok.DwarfAttEncoding,
                pyllvm.lltok.DwarfVirtuality,
                pyllvm.lltok.DwarfLang,
                pyllvm.lltok.DwarfCC,
                pyllvm.lltok.EmissionKind,
                pyllvm.lltok.NameTableKind,
                pyllvm.lltok.DwarfOp,
                pyllvm.lltok.DIFlag,
                pyllvm.lltok.DISPFlag,
                pyllvm.lltok.DwarfMacinfo,
                pyllvm.lltok.ChecksumKind])

uints = frozenset([ pyllvm.lltok.GlobalID, 
                    pyllvm.lltok.LocalVarID, 
                    pyllvm.lltok.AttrGrpID,
                    pyllvm.lltok.SummaryID])

# def fromty(ty):
#     if ty.isVoidTy():
#         return "void"
#     elif ty.isHalfTy():
#         return "half"
#     elif ty.isFloatTy():
#         return "float"
#     #elif ty.isBFloatTy():
#     #    return "bfloat"
#     elif ty.isDoubleTy():
#         return "double"
#     elif ty.isX86_FP80Ty():
#         return "x86_fp80"
#     elif ty.isFP128Ty():
#         return "fp128"
#     elif ty.isPPC_FP128Ty():
#         return "ppc_fp128"
#     elif ty.isX86_MMXTy():
#         return "x86_mmx"
#     elif ty.isLabelTy():
#         return "label"
#    # elif ty.isMetadataTy():
#    #     return "metadata"
#     elif ty.isTokenTy():
#         return "token"
#     elif ty.isIntegerTy():
#         return "i" + str(ty.getIntWidth())
#     assert False


class ind_iter(object):
    def __init__(self, len):
        self.i = 0
        self.len = len

    def next(self):
        self.i += 1
        if self.i > (self.len - 1):
            raise StopIteration

    def prev(self):
        self.i -= 1
        if self.i < 0:
            raise StopIteration


def process_string(tok, char2tok, tok2char, is_comment):
    if is_comment:
        tok = re.sub(' +', ' ', tok)
        tok = re.sub(r"(.)\1\1\1\1+", r"\1\1\1\1\1", tok)
        if len(re.sub(r'\W', '', tok)) < 2:
            return ''
    tok = tok.replace(' ', ' ▁ ')
    for char, special_token in char2tok.items():
        tok = tok.replace(char, special_token)
    if tok.startswith(' STOKEN0'):
        if tok.endswith('\n'):
            tok = tok[:-1]
        tok += ' ENDCOM'
    tok = tok.replace('\n', ' STRNEWLINE ')
    tok = tok.replace('\t', ' TABSYMBOL ')
    tok = re.sub(' +', ' ', tok)
    # print(f"before tokenize_v14_international {tok}")
    tok = tokenize_v14_international(tok)
    # print(f"after tokenize_v14_international {tok}")
    tok = re.sub(' +', ' ', tok)
    for special_token, char in tok2char.items():
        tok = tok.replace(special_token, char)
    tok = tok.replace('\r', '')

    return tok

def process_string_llvm(tok, char2tok, tok2char, is_comment):
    if is_comment:
        tok = re.sub(' +', ' ', tok)
        tok = re.sub(r"(.)\1\1\1\1+", r"\1\1\1\1\1", tok)
        if len(re.sub(r'\W', '', tok)) < 2:
            return ''
    tok = tok.replace(' ', ' ▁ ')
    tok = tok.replace('\n', ' STRNEWLINE ')
    tok = tok.replace('\t', ' TABSYMBOL ')
    tok = re.sub(' +', ' ', tok)
    # tok = tokenize_v14_international(tok)
    tok = re.sub(' +', ' ', tok)
    for special_token, char in tok2char.items():
        tok = tok.replace(special_token, char)
    tok = tok.replace('\r', '')
    return tok


def tokenize_python(s, keep_comments=False):
    try:
        assert isinstance(s, str)
        s = s.replace(r'\r', '')
        tokens = []

        try:
            iterator = tokenize.tokenize(BytesIO(s.encode('utf-8')).readline)
        except SyntaxError as excep:
            raise SyntaxError(excep)

        removed_docstr = 0
        while True:
            try:
                toktype, tok, _, _, line = next(iterator)
            except (tokenize.TokenError, IndentationError, SyntaxError, UnicodeDecodeError):
                raise Exception(
                    f"Impossible to parse tokens because icorrect source code \"{s[0:30]}\" ...")
            except StopIteration:
                raise Exception(f"End of iterator before ENDMARKER token.")

            if toktype == tokenize.ENCODING or toktype == tokenize.NL:
                continue

            elif toktype == tokenize.NEWLINE:
                if removed_docstr == 1:
                    removed_docstr = 0
                    continue
                tokens.append('NEW_LINE')

            elif toktype == tokenize.COMMENT:
                if keep_comments:
                    com = process_string(
                        tok, PYTHON_CHAR2TOKEN, PYTHON_TOKEN2CHAR, True)
                    if len(com) > 0:
                        tokens.append(com)
                else:
                    continue

            elif toktype == tokenize.STRING:
                if tok == line.strip():  # docstring
                    if not keep_comments:
                        removed_docstr = 1
                        continue
                    else:
                        coms = process_string(
                            tok, PYTHON_CHAR2TOKEN, PYTHON_TOKEN2CHAR, True)
                        if len(coms) > 0:
                            tokens.append(coms)
                        else:
                            removed_docstr = 1
                else:
                    tokens.append(process_string(
                        tok, PYTHON_CHAR2TOKEN, PYTHON_TOKEN2CHAR, False))

            elif toktype == tokenize.INDENT:
                tokens.append('INDENT')

            elif toktype == tokenize.DEDENT:
                # empty block
                if tokens[-1] == 'INDENT':
                    tokens = tokens[:-1]
                else:
                    tokens.append('DEDENT')

            elif toktype == tokenize.ENDMARKER:
                tokens.append('ENDMARKER')
                break

            else:
                tokens.append(tok)

        assert (tokens[-1] == 'ENDMARKER'), "Error, no end marker"
        return tokens[:-1]
    except KeyboardInterrupt:
        raise
    except:
        return []


def detokenize_python(s):
    try:
        assert isinstance(s, str) or isinstance(s, list)
        if isinstance(s, list):
            s = ' '.join(s)
        s = s.replace('ENDCOM', 'NEW_LINE')
        s = s.replace('▁', 'SPACETOKEN')

        lines = s.split('NEW_LINE')
        tabs = ''
        for i, line in enumerate(lines):
            line = line.strip()
            if line.startswith('INDENT '):
                tabs += '    '
                line = line.replace('INDENT ', tabs)
            elif line.startswith('DEDENT'):
                number_dedent = line.count('DEDENT')
                tabs = tabs[4 * number_dedent:]
                line = line.replace("DEDENT", '')
                line = line.strip()
                line = tabs + line
            elif line == 'DEDENT':
                line = ''
            else:
                line = tabs + line
            lines[i] = line
        untok_s = '\n'.join(lines)

        # find string and comment with parser and detokenize string correctly
        try:
            for toktype, tok, _, _, line in tokenize.tokenize(BytesIO(untok_s.encode('utf-8')).readline):
                if toktype == tokenize.STRING or toktype == tokenize.COMMENT:
                    tok_ = tok.replace('STRNEWLINE', '\n').replace(
                        'TABSYMBOL', '\t').replace(' ', '').replace('SPACETOKEN', ' ')
                    untok_s = untok_s.replace(tok, tok_)
        except KeyboardInterrupt:
            raise
        except:
            pass

        # detokenize imports
        untok_s = untok_s.replace('. ', '.').replace(' .', '.').replace(
            'import.', 'import .').replace('from.', 'from .')
        untok_s = untok_s.replace('> >', '>>').replace('< <', '<<')
        return untok_s
    except KeyboardInterrupt:
        raise
    except:
        return ''


def extract_functions_python_with_docstring(function):
    ds = re.findall(
        "[:][ ][N][E][W][_][L][I][N][E][ ][I][N][D][E][N][T][ ]['][']['].*?['][']['][ ][N][E][W][_][L][I][N][E]|[:][ ][N][E][W][_][L][I][N][E][ ][I][N][D][E][N][T][ ][\"][\"][\"].*?[\"][\"][\"][ ][N][E][W][_][L][I][N][E]",
        function, re.DOTALL)
    if len(ds) > 0:
        for d in ds:
            function = function.replace(d[18:-9], '')
        coms = ' '.join([d[18:-9] for d in ds])
        inline_coms = re.findall('[#].*?[E][N][D][C][O][M]', function)
        for inline_com in inline_coms:
            function = function.replace(inline_com, '')
            coms += ' <INLINE> '
            coms += inline_com
        if len(re.sub(r'\W', '', coms.replace('<INLINE>', '').replace('ENDCOM', ''))) < 5:
            return '', ''
        else:
            return re.sub('\s+', ' ', function), coms
    else:
        return '', ''


def extract_functions_python(s):
    tokens = iter(s.split())
    functions_standalone = []
    functions_class = []
    number_indent = 0
    try:
        token = next(tokens)
    except StopIteration:
        return [], []
    while True:
        try:
            if token == 'def':
                function = ['def']
                while not (token == 'DEDENT' and number_indent == 0):
                    token = next(tokens)
                    if token == 'INDENT':
                        number_indent += 1
                    elif token == 'DEDENT':
                        number_indent -= 1
                    function.append(token)
                try:
                    if function[function.index('(') + 1] == 'self':
                        function = filter_functions_python_2_3(
                            ' '.join(function))
                        if function is not None:
                            functions_class.append(function)
                    else:
                        function = filter_functions_python_2_3(
                            ' '.join(function))
                        if function is not None:
                            functions_standalone.append(function)
                except:
                    token = next(tokens)
            else:
                token = next(tokens)
        except StopIteration:
            break
    return functions_standalone, functions_class


def filter_functions_python_2_3(function):
    if (re.search("print [^(]", function) is None and
            re.search("raise \w+ ,", function) is None and
            re.search("except \w+ ,", function) is None and
            re.search("[^ ]+ = \d+ L", function) is None and
            ". iterkeys ( )" not in function and
            ". itervalues ( )" not in function and
            ". iteritems ( )" not in function and
            "xrange (" not in function and
            "imap (" not in function):
        return function
    else:
        return None


def get_function_name_python(s):
    assert isinstance(s, str) or isinstance(s, list)
    if isinstance(s, str):
        s = s.split()
    return s[s.index('def') + 1]


@timeout(10)
def get_cpp_tokens_and_types(s):
    try: 
        tokens = []
        assert isinstance(s, str)
        s = s.replace(r'\r', '')
        hash = str(random.getrandbits(128))
        parsed_code = idx.parse(
            hash + '_tmp.cpp', args=['-std=c++11'], unsaved_files=[(hash + '_tmp.cpp', s)], options=0)
        for tok in parsed_code.get_tokens(extent=parsed_code.cursor.extent):
            tokens.append((tok.spelling, tok.kind))
        # print(f"get_cpp_tokens_and_types tokens {tokens}")
        return tokens
    except: 
        print("a problem in get_cpp_tokens_and_types",flush=True)
        return ''

def tokenize_cpp(s, keep_comments=False):
    tokens = []
    assert isinstance(s, str)
    try:
        tokens_and_types = get_cpp_tokens_and_types(s)
        for tok, typ in tokens_and_types:
            if not keep_comments and typ == TokenKind.COMMENT:
                continue
            if typ in STRINGS_AND_COMMENTS_TOKEN_KINDS:
                if typ == TokenKind.COMMENT:
                    com = process_string(
                        tok, CPP_CHAR2TOKEN, CPP_TOKEN2CHAR, True)
                    if len(com) > 0:
                        tokens.append(com)
                else:
                    tokens.append(process_string(
                        tok, CPP_CHAR2TOKEN, CPP_TOKEN2CHAR, False))
            else:
                tokens.append(tok)
        return tokens
    except KeyboardInterrupt:
        raise
    except TimeoutError:
        print(f'TimeOut Error')
        logging.info('*' * 20)
        logging.info(f'TimeOut Error for string {s}')
        return []
    except:
        print('here?')
        return []


def tokenize_java(s, keep_comments=False):
    try:
        tokens = []
        assert isinstance(s, str)
        s = s.replace(r'\r', '')
        tokens_generator = javalang_tok.tokenize(
            s, keep_comments=keep_comments)
        for token in tokens_generator:
            if isinstance(token, javalang_tok.String):
                tokens.append(process_string(
                    token.value, JAVA_CHAR2TOKEN, JAVA_TOKEN2CHAR, False))
            elif isinstance(token, javalang_tok.Comment):
                com = process_string(
                    token.value, JAVA_CHAR2TOKEN, JAVA_TOKEN2CHAR, True)
                if len(com) > 0:
                    tokens.append(com)
            else:
                tokens.append(token.value)
        return tokens
    except:
        return []

def detokenize_cpp(s):
    assert isinstance(s, str) or isinstance(s, list)
    if isinstance(s, list):
        s = ' '.join(s)
    # the ▁ character created bugs in the cpp tokenizer
    s = s.replace('ENDCOM', '\n').replace('▁', ' SPACETOKEN ')
    try:
        tokens_and_types = get_cpp_tokens_and_types(s)
    except:
        return ''
    new_tokens = []
    i = 0
    while i < len(tokens_and_types):
        token, type = tokens_and_types[i]
        if type in STRINGS_AND_COMMENTS_TOKEN_KINDS:
            new_tokens.append(token.replace('STRNEWLINE', '\n').replace(
                'TABSYMBOL', '\t').replace(' ', '').replace('SPACETOKEN', ' '))
            if type == TokenKind.COMMENT:
                new_tokens.append('NEW_LINE')
        elif token == '}':
            if i < len(tokens_and_types) - 1 and tokens_and_types[i + 1][0] == ';':
                new_tokens += ['CB_COLON', 'NEW_LINE']
                i += 2
                continue
            if i < len(tokens_and_types) - 1 and tokens_and_types[i + 1][0] == ',':
                new_tokens += ['CB_COMA', 'NEW_LINE']
                i += 2
                continue
            new_tokens += ['CB_', 'NEW_LINE']
        elif token == '{':
            new_tokens += ['OB_', 'NEW_LINE']
        elif token == '*/':
            new_tokens += ['*/', 'NEW_LINE']
        elif token == ';':
            new_tokens += [';', 'NEW_LINE']
        else:
            new_tokens.append(token)

        if i < len(tokens_and_types) - 1 and tokens_and_types[i + 1][0] in TOK_NO_SPACE_BEFORE:
            next_token = tokens_and_types[i + 1][0]
            new_tokens[len(new_tokens) - 1] += next_token
            if next_token == ';':
                new_tokens.append('NEW_LINE')
            i += 2
            continue
        i += 1

    lines = re.split('NEW_LINE', ' '.join(new_tokens))

    untok_s = indent_lines(lines)
    untok_s = untok_s.replace('CB_COLON', '};').replace(
        'CB_COMA', '},').replace('CB_', '}').replace('OB_', '{')
    return untok_s


def indent_lines(lines):
    prefix = ''
    for i, line in enumerate(lines):
        line = line.strip()
        if re.match('CB_COLON|CB_COMA|CB_', line):
            prefix = prefix[2:]
            line = prefix + line
        elif line.endswith('OB_'):
            line = prefix + line
            prefix += '  '
        else:
            line = prefix + line
        lines[i] = line
    untok_s = '\n'.join(lines)
    return untok_s


def detokenize_java(s):
    assert isinstance(s, str) or isinstance(s, list)
    if isinstance(s, list):
        s = ' '.join(s)
    s = s.replace('ENDCOM', 'NEW_LINE')
    s = s.replace('▁', 'SPACETOKEN')

    s = s.replace('} "', 'CB_ "')
    s = s.replace('" {', '" OB_')
    s = s.replace('*/ ', '*/ NEW_LINE')
    s = s.replace('} ;', 'CB_COLON NEW_LINE')
    s = s.replace('} ,', 'CB_COMA')
    s = s.replace('}', 'CB_ NEW_LINE')
    s = s.replace('{', 'OB_ NEW_LINE')
    s = s.replace(';', '; NEW_LINE')
    lines = re.split('NEW_LINE', s)

    untok_s = indent_lines(lines)
    untok_s = untok_s.replace('CB_COLON', '};').replace(
        'CB_COMA', '},').replace('CB_', '}').replace('OB_', '{')
    untok_s = untok_s.replace('> > >', '>>>').replace('<< <', '<<<')
    untok_s = untok_s.replace('> >', '>>').replace('< <', '<<')

    try:
        # call parser of the tokenizer to find comments and string and detokenize them correctly
        tokens_generator = javalang_tok.tokenize(untok_s, keep_comments=True)
        for token in tokens_generator:
            if isinstance(token, javalang_tok.String) or isinstance(token, javalang_tok.Comment):
                token_ = token.value.replace('STRNEWLINE', '\n').replace('TABSYMBOL', '\t').replace(' ', '').replace(
                    'SPACETOKEN', ' ')
                untok_s = untok_s.replace(token.value, token_)
    except KeyboardInterrupt:
        raise
    except:
        pass
    return untok_s


def extract_functions_java(s):
    tokens = s.split()
    i = ind_iter(len(tokens))
    functions_standalone = []
    functions_class = []
    try:
        token = tokens[i.i]
    except KeyboardInterrupt:
        raise
    except:
        return [], []
    while True:
        try:
            # detect function
            if token == ')' and (tokens[i.i + 1] == '{' or (tokens[i.i + 1] == 'throws' and tokens[i.i + 3] == '{')):
                # go previous until the start of function
                while token not in [';', '}', '{', '*/', 'ENDCOM']:
                    i.prev()
                    token = tokens[i.i]

                if token == '*/':
                    while token != '/*':
                        i.prev()
                        token = tokens[i.i]
                    function = [token]
                    while token != '*/':
                        i.next()
                        token = tokens[i.i]
                        function.append(token)
                elif token == 'ENDCOM':
                    while token != '//':
                        i.prev()
                        token = tokens[i.i]
                    function = [token]
                    while token != 'ENDCOM':
                        i.next()
                        token = tokens[i.i]
                        function.append(token)
                else:
                    i.next()
                    token = tokens[i.i]
                    function = [token]

                while token != '{':
                    i.next()
                    token = tokens[i.i]
                    function.append(token)
                if token == '{':
                    number_indent = 1
                    while not (token == '}' and number_indent == 0):
                        try:
                            i.next()
                            token = tokens[i.i]
                            if token == '{':
                                number_indent += 1
                            elif token == '}':
                                number_indent -= 1
                            function.append(token)
                        except StopIteration:
                            break
                    if 'static' in function[0:function.index('{')]:
                        functions_standalone.append(
                            remove_java_annotation(' '.join(function)))
                    else:
                        functions_class.append(
                            remove_java_annotation(' '.join(function)))
            i.next()
            token = tokens[i.i]
        except KeyboardInterrupt:
            raise
        except:
            break
    return functions_standalone, functions_class


def extract_functions_llvm_with_docstring(function):
    return '', '' 

def extract_functions_java_with_docstring(function):
    ds = re.findall('[/][*].*?[*][/][ ]', function, re.DOTALL)
    if len(ds) > 0:
        for d in ds:
            function = function.replace(d, '')
        coms = ' '.join([d[:-1] for d in ds])
        inline_coms = re.findall('[/][/].*?[E][N][D][C][O][M]', function)
        for inline_com in inline_coms:
            function = function.replace(inline_com, '')
            coms += ' <INLINE> '
            coms += inline_com
        if len(re.sub(r'\W', '', coms.replace('<INLINE>', '').replace('ENDCOM', ''))) < 5:
            return '', ''
        else:
            return re.sub('\s+', ' ', function), coms
    else:
        return '', ''


def clean_hashtags_functions_cpp(function):
    function = re.sub('[#][ ][i][n][c][l][u][d][e][ ]["].*?["]', "", function)
    function = re.sub('[#][ ][i][n][c][l][u][d][e][ ][<].*?[>]', "", function)
    function = re.sub('[#][ ][i][f][n][d][e][f][ ][^ ]*', "", function)
    function = re.sub('[#][ ][i][f][d][e][f][ ][^ ]*', "", function)
    function = re.sub(
        '[#][ ][d][e][f][i][n][e][ ][^ ]*[ ][(][ ].*?[ ][)][ ][(][ ].*[ ][)]', "", function)
    # print(re.findall('[#][ ][d][e][f][i][n][e][ ][^ ]*[ ][(][ ].*?[ ][)][ ][{][ ].*[ ][}]', function))
    function = re.sub(
        '[#][ ][d][e][f][i][n][e][ ][^ ]*[ ][(][ ].*?[ ][)][ ][{][ ].*[ ][}]', "", function)
    
    function = re.sub(
        '[#][ ][d][e][f][i][n][e][ ][^ ]*[ ]([(][ ])?["].*?["]([ ][)])?', "", function)
    function = re.sub(
        '[#][ ][d][e][f][i][n][e][ ][^ ]*[ ]([(][ ])?\d*\.?\d*([ ][+-/*][ ]?\d*\.?\d*)?([ ][)])?', "", function)
    # print(function)
    function = re.sub('[#][ ][d][e][f][i][n][e][ ][^ ]', "", function)
    function = re.sub(
        '[#][ ][i][f][ ][d][e][f][i][n][e][d][ ][(][ ].*?[ ][)]', "", function)
    function = re.sub('[#][ ][i][f][ ][^ ]*', "", function)
    function = function.replace('# else', '')
    function = function.replace('# endif', '')
    function = function.strip()
    return function


def extract_functions_cpp(s):
    # try:
    s = clean_hashtags_functions_cpp(s)
    s = s.replace('ENDCOM', '\n').replace('▁', 'SPACETOKEN')
    tokens = get_cpp_tokens_and_types(s)
    # except:
    #     return [], []
    i = ind_iter(len(tokens))
    functions_standalone = []
    functions_class = []
    try:
        token, token_type = tokens[i.i]
    except:
        return [], []
    while True:
        try:
        # detect function
            if token == ')' and ((tokens[i.i + 1][0] == '{' and tokens[i.i + 2][0] != '}') or (
                    tokens[i.i + 1][0] == 'throw' and tokens[i.i + 4][0] == '{' and tokens[i.i + 5][0] == '}')):
                # go previous until the start of function
                while token not in {';', '}', '{'}:
                    try:
                        i.prev()
                    except StopIteration:
                        break
                    token = tokens[i.i][0]

                i.next()
                token, token_type = tokens[i.i]
                if token_type == TokenKind.COMMENT:
                    token = token.strip()
                    token += " ENDCOM"
                function = [token]
                token_types = [token_type]
                while token != '{':
                    i.next()
                    token, token_type = tokens[i.i]
                    if token_type == TokenKind.COMMENT:
                        token = token.strip()
                        token += " ENDCOM"
                    function.append(token)
                    token_types.append(token_type)

                if token_types[function.index('(') - 1] != TokenKind.IDENTIFIER:
                    continue
                if token == '{':
                    number_indent = 1
                    while not (token == '}' and number_indent == 0):
                        try:
                            i.next()
                            token, token_type = tokens[i.i]
                            if token == '{':
                                number_indent += 1
                            elif token == '}':
                                number_indent -= 1
                            if token_type == TokenKind.COMMENT:
                                token = token.strip()
                                token += " ENDCOM"
                            function.append(token)
                        except StopIteration:
                            break
                    if 'static' in function[0:function.index('{')] or '::' not in function[0:function.index('(')]:
                        function = ' '.join(function)
                        function = re.sub(
                            "[<][ ][D][O][C][U][M][E][N][T].*?[>] ", "", function)
                        function = clean_hashtags_functions_cpp(function)
                        function = function.strip()
                        function = function.replace(
                            '\n', 'ENDCOM').replace('SPACETOKEN', '▁')
                        if not re.sub('[^ ]*[ ][(][ ]\w*([ ][,][ ]\w*)*[ ][)]', "", function[:function.index('{')]).strip().startswith('{') and not function.startswith('#'):
                            functions_standalone.append(function)
                    else:
                        function = ' '.join(function)
                        function = re.sub(
                            "[<][ ][D][O][C][U][M][E][N][T].*?[>] ", "", function)
                        function = clean_hashtags_functions_cpp(function)
                        function = function.strip()
                        function = function.replace(
                            '\n', 'ENDCOM').replace('SPACETOKEN', '▁')
                        if not re.sub('[^ ]*[ ][(][ ]\w*([ ][,][ ]\w*)*[ ][)]', "", function[:function.index('{')]).strip().startswith('{') and not function.startswith('#'):
                            functions_class.append(function)
            i.next()
            token = tokens[i.i][0]
        except:
            break
    return functions_standalone, functions_class


def extract_functions_cpp_with_docstring(function):
    function = re.sub("[<][ ][D][O][C][U][M][E][N][T].*?[>] ", "", function)
    ds = re.findall('[/][*].*?[*][/][ ]', function, re.DOTALL)
    if len(ds) > 0:
        for d in ds:
            function = function.replace(d, '')
        coms = ' '.join([d[:-1] for d in ds])
        inline_coms = re.findall('[/][/].*?[E][N][D][C][O][M]', function)
        for inline_com in inline_coms:
            function = function.replace(inline_com, '')
            coms += ' <INLINE> '
            coms += inline_com
        if len(re.sub(r'\W', '', coms.replace('<INLINE>', '').replace('ENDCOM', ''))) < 5:
            return '', ''
        else:
            return re.sub('\s+', ' ', function), coms
    else:
        return '', ''


def remove_java_annotation(function):
    return re.sub('^(@ (Override|Deprecated|SuppressWarnings) (\( .* \) )?)*', '', function)

def strip_llvm_comment(s):
    if(s.find('\n') != -1):
        s = s[:s.index('\n')]
    if(s.find('; ') != -1):
        s = s[:s.index('; ')]
    return s


def get_llvm_value(tokens, i, detok=False): 
    try: 
        ty = []
        if re.fullmatch("\d+",tokens[i]) != None or re.fullmatch("-\d+",tokens[i]) != None: 
            ty.append(tokens[i])
            i+=1 
        elif tokens[i][0] == '@' or tokens[i][0] == '%': 
            ty.append(tokens[i])
            i+=1
        elif tokens[i] in set(['null','undef','zeroinitializer']): 
            ty.append(tokens[i])
            i+=1
        elif tokens[i] == 'bitcast': 
            ty.append(tokens[i])
            i+=1 
            assert(tokens[i] == '('), f"bitcast ("
            par = 0
            while i < len(tokens): 
                if tokens[i] == '(': 
                    par+=1 
                elif tokens[i] == ')': 
                    par-=1
                elif tokens[i] == 'getelementptr': 
                    ty2, i = get_llvm_value(tokens,i, detok=detok)
                    ty.extend(ty2)
                    continue
                ty.append(tokens[i]) 
                i+=1
                if par == 0: 
                    break
        elif tokens[i] == 'getelementptr': 
            ty.append(tokens[i]); i+=1
            if tokens[i] == "inbounds":  ty.append(tokens[i]); i+=1
            assert tokens[i] == '(', f"getelementptr ("
            ty.append(tokens[i])
            i+=1
            ty2, i = get_llvm_type(tokens, i)  
            ty.extend(ty2)
            if detok: 
                ty.extend([","] + ty2 + ["*"])
            else: 
                _, i = get_llvm_type(tokens, i+1) 
            par = 1
            ty2, i = get_llvm_value(tokens, i, detok=detok)
            ty.extend(ty2)
            while tokens[i] != ')': 
                ty.append(tokens[i]) 
                i+=1
            ty.append(tokens[i]); i+=1
        # elif tokens[i] == '{' or tokens[i] == '[': 
        #     par = 0
        #     ty.append(tokens[i]); i+=1
        #     while i < len(tokens): 
        #         if tokens[i] == ',': 
        #             i+=1 
        #         elif par %2 == 0: 
        #             par += 1 
        #             ty2, i = get_llvm_type(tokens,i) 
        #             print(tokens[i])
        #             if len(ty2)>0 and ty2[0] != '{' and ty2[0] != '[': 
        #                 ty.extend(ty2)
        #         elif par %2 == 1: 
        #             par += 1
        #             ty2, i = get_llvm_value(tokens,i) 
        #             ty.extend(ty2)
        #         else: 
        #             print(tokens[i])
        #         i+=1
        return ty, i 
    except:
        print("an error in get_llvm_value" + str(tokens) + f"i = {i}" + "\n" + str(ty) )
        return ty, i
            

def get_llvm_type(tokens, i, add_comma=0, detok=False): 
    #add_comma: 1 means only types; 2 means with value
    try: 
        ty = []
        word_types = set(['half', 'bfloat', 'float', 'double', 
                    'fp128', 'x86_fp80', 'ppc_fp128', 'x86_amx', 'x86_mmx','void'])
        if tokens[i] in word_types:
            ty.append(tokens[i])
            i+=1
        elif re.fullmatch("i\d+", tokens[i]) != None and (int(tokens[i][1:])==1 or int(tokens[i][1:]) %8 == 0): 
            ty.append(tokens[i])
            i+=1
        elif tokens[i][0] == '%' and re.fullmatch("%\d+", tokens[i]) == None: 
            ty.append(tokens[i])
            i+=1
        elif tokens[i] == '[' or tokens[i] == '{': 
            par = 0
            pars = dict()
            while i < len(tokens): 
                if tokens[i] == '[' or tokens[i] == '{': 
                    if len(ty) >= 1 and ty[-1] not in set(['[','{','x','(',',', 'to']): 
                        if add_comma == 1: 
                            ty.append(',')
                        elif add_comma == 2 and pars[par] %2 == 0: 
                            ty.append(',')
                    if par != 0: pars[par] +=1
                    par+=1 
                    pars[par] = 0
                elif tokens[i] == ']' or tokens[i] == '}': 
                    par-=1
                toktype = get_one_llvm_toktype(tokens[i])
                if par != 0 and (tokens[i] in set(['c','zeroinitializer','undef,null']) or tokens[i][0] =='@'): 
                    pars[par] +=1
                if add_comma > 0 and par != 0 and toktype == pyllvm.lltok.Type and ty[-1] not in set(['[','{','x','(','to', ',']): 
                    ty.append(',')
                ty.append(tokens[i])

                if add_comma ==2 and tokens[i] == 'getelementptr': 
                    i+=1
                    if tokens[i] == 'inbounds': i+=1 ; ty.append("inbounds")
                    if tokens[i] == '(': i+=1 ; ty.append("(")
                    ty2, i = get_llvm_type(tokens, i, add_comma=1)
                    ty.extend(ty2)
                    ty2 = [','] + ty2 + ['*']
                    ty.extend(ty2)
                    i-=1

                i+=1
                if par==0: 
                    # one token after ] or }s
                    break
        elif tokens[i] == '<': 
            par = 0
            while i < len(tokens): 
                if tokens[i] == '<': 
                    par +=1 
                elif tokens[i] == '>': 
                    par -=1 
                ty.append(tokens[i])
                i+=1 
                if par == 0: 
                    break

        while i < len(tokens) and tokens[i] == '*':
            ty.append(tokens[i])
            i+=1
        if not detok and i < len(tokens) and tokens[i] == '(': 
            par = 0
            while i < len(tokens): 
                if tokens[i] == '(': 
                    par +=1 
                elif tokens[i] == ')': 
                    par -=1 
                ty.append(tokens[i])
                i+=1 
                if par == 0: 
                    break

        while i < len(tokens) and tokens[i] == '*':
            ty.append(tokens[i])
            i+=1

        return ty, i 
    except:
        print("an error in get_llvm_type" + str(tokens) + "\n" + str(ty) )
        return ty, i
            
            

def tokenize_instruction_printer(tokens):

    if len(tokens)>0 and tokens[0] == 'define': 
        tokens = infix_to_prefix(tokens[:-1])
        tokens.append('{')
        return tokens
    if len(tokens)>0 and tokens[0] == 'switch' and tokens[-1] == '[': 
        tokens = infix_to_prefix(tokens[:-1])
        tokens.append('[')
        return tokens
    if len(tokens) == 1 and tokens[0] == '}':
        #no infix to prefix
        return tokens

    i = 0 
    par = 0
    while i < len(tokens): 
        if tokens[i] in set(['[', '(', '{']): par +=1 
        elif tokens[i] in set([']', ')', '}']): par -=1

        
        if tokens[i] == 'load': 
            i+=1
            if tokens[i] == 'volatile': i+=1
            __, i = get_llvm_type(tokens, i) 
           # assert tokens[i] == ',', f"no comma after type {tokens[i]} in {str(tokens)}"
            ty, j = get_llvm_type(tokens, i+1) 
            del tokens[i:j]
            
        if tokens[i] == 'getelementptr':
            i+=1
            if tokens[i] == 'inbounds': i+=1
            if tokens[i] == '(': 
                i+=1 
                par+=1 
            _, i = get_llvm_type(tokens, i) 
           # assert tokens[i] == ',', f"no comma after type {tokens[i]} in {str(tokens)}"
            ty, j = get_llvm_type(tokens, i+1) 
            del tokens[i:j]
            i-=1
            
        if tokens[i] == ',' and par == 0 and tokens[0] == 'store': 
            ty, j = get_llvm_type(tokens, i+1)
            del tokens[i:j]
            i-=1

        if tokens[i] == 'constant' or tokens[i] == 'global': 
            ty, j = get_llvm_type(tokens, i+1)
            if j < len(tokens):
                ty2, x = get_llvm_value(tokens, j)
                tokens[j:x] = ty2
                i = x 
            else: 
                i = j
            
        i+=1
    
    tokens = infix_to_prefix(tokens)
    return tokens
                
def detokenize_instruction_printer(tokens):
    try: 
        i = 0 
        while i < len(tokens): 
            ty, _ = get_llvm_type(tokens, i)
            
            if tokens[i] == 'load': 
                i+=1
                if tokens[i] == 'volatile': i+=1
                ty, j = get_llvm_type(tokens, i)
                tokens[i:j] = ty 
                ty =  [','] + ty + ['*']
                tokens[j:j] = ty
                i = j+len(ty)-1
            elif tokens[i] == 'store': 
                i+=1
                if tokens[i] == 'volatile': i+=1
                ty, j = get_llvm_type(tokens, i)
                tokens[i:j] = ty
                ty2, x = get_llvm_value(tokens,j, detok=True)
                tokens[j:x] = ty2
                i = j +len(ty2)
                ty = [','] + ty + ['*']  
                tokens[i:i] = ty 
                i += len(ty)-1
            elif tokens[i] == 'getelementptr': 
                i+=1
                if tokens[i] == 'inbounds': i+=1
                if tokens[i] == '(': i+=1 
                ty, j = get_llvm_type(tokens, i, add_comma=1)
                tokens[i:j] = ty 
                i += len(ty) 
                ty = [','] + ty + ['*']
                tokens[i:i] = ty
                i-=1 
            if ty != [] and len(ty) >1: 
                ty, j  = get_llvm_type(tokens, i, add_comma=1)
                tokens[i:j] = ty 
                i += len(ty)-1
            #don't need to consider this case anymore because we train on a function level
            # elif tokens[i] == 'constant' or tokens[i] == 'global': 
            #     i+=1 
            #     ty, j  = get_llvm_type(tokens, i, add_comma=1)
            #     tokens[i:j] = ty 
            #     i += len(ty)
            #     if i < len(tokens): 
            #         ty, j  = get_llvm_type(tokens, i, add_comma=2)
            #         tokens[i:j] = ty
            #     i += len(ty) - 1
        # elif tokens[i] == 'bitcast': 
        #     i+=1 
        #     if tokens[i] == '(': i+=1 
        #     ty, j  = get_llvm_type(tokens, i, add_comma=1)
        #     tokens[i:j] = ty 
        #     i += len(ty)
        #     ty, j  = get_llvm_type(tokens, i, add_comma=1)
        #     tokens[i:j] = ty 
        #     i += len(ty)
        #     assert tokens[i] == 'to', f"bitcast but no to in {tokens}"
        #     ty, j  = get_llvm_type(tokens, i, add_comma=1)
        #     tokens[i:j] = ty 
        #     i += len(ty)-1
            i+=1
        return tokens
    except: 
        print("a problem in detokenize_instruction_printer")
        return tokens
    
def tokenize_llvm(s, keep_comments=False):
    # try:
        assert isinstance(s, str)
        s = s.replace(r'\r', '')
        # global_strings_index = [] 
        # global_constants_index = [] 
        # local_constants_index = []

        #delete top and bottom irrelevant stuff
        # start = time()

        if s.find('attributes #0 = {') != -1: 
            s = s[:s.index('attributes #0 = {')]
        s = re.sub("(.*\n){4}\n","",s, 1)
        # if s.find("\"x86_64-unknown-linux-gnu\"") != -1: 
        #     s = s[s.index("\"x86_64-unknown-linux-gnu\"")+len("\"x86_64-unknown-linux-gnu\"\n\n"):]
        arr = s.split('\n')
        tokens = [] 
        total_len = 0 
        for line in arr: 
            toks_line, toktypes_line = tokenize_llvm_line(line)
            if toks_line == '': 
                return ''
            toks_line = tokenize_instruction_printer(toks_line)
            tokens.extend(toks_line)
            if len(tokens)>0 and tokens[-1] != "NEW_LINE": 
                tokens.append("NEW_LINE")
        # print(f"{time()-start} -- tokenize_llvm_line and tokenize_instruction_printer time", flush=True)
        # start = time()
        tokens = remove_globals(tokens)
        # print(f"{time()-start} -- remove_globals time", flush=True)
        return tokens

    # except KeyboardInterrupt:
    #     raise
    # except:
    #     return []

def tokenize_llvm_line(s): 
    assert isinstance(s, str)
    lex = pyllvm.lexer(s)
    isFirst = True; 
    tokens = [] 
    toktypes = []
    while True:
        if isFirst:
            toktype, tok = lex.getFirstTok()
            isFirst = False 
        else: 
            toktype, tok = lex.getTok()
        tok = tok.strip()
        if(tok != ''): 
            tokens.append(tok)
        
        if len(toktypes) >= 1: 
            #clean ; comments
            if(toktypes[-1] == pyllvm.lltok.rbrace):
                tokens[-1] = "}"
            elif (toktypes[-1] == pyllvm.lltok.APSInt):
                tokens[-1] = str(re.findall(r"-*\d+",tokens[-1])[0])
            elif toktypes[-1] == pyllvm.lltok.LabelID:
                tokens[-1] = re.findall(r"\d+",tokens[-1])[0] + ":"
            elif toktypes[-1] in uints:
                tokens[-1] = str(tokens[-1][0]) + re.findall(r"\d+",tokens[-1])[0] 
            elif toktypes[-1] in strings:
                try:
                    tokens[-1] = process_string_llvm(tokens[-1], LLVM_CHAR2TOKEN, LLVM_TOKEN2CHAR, False)
                except UnicodeDecodeError:
                    print(tokens[-1])
            #remove packed struct
            elif (len(tokens)>=2 and tokens[-1] == ">"
                and tokens[-2] == "}"):
                del tokens[-1]; del toktypes[-1]
            elif (len(tokens)>=2 and tokens[-1] == "{"
                and tokens[-2] == "<"):
                del tokens[-2]; del toktypes[-2]   
            elif tokens[-1][0] == "#": 
                del tokens[-1]; del toktypes[-1]
            elif tokens[-1] == 'internal': 
                del tokens[-1]; del toktypes[-1]
            
        if len(tokens) >=2 and tokens[-2] == "align" and re.findall(r"-*\d+",tokens[-1]) != None: 
            if len(tokens) >=3 and tokens[-3] == ',': 
                del toktypes[-3:]
                del tokens[-3:] 
            else: 
                del toktypes[-2:]
                del tokens[-2:] 

        if toktype == pyllvm.lltok.Eof:
            return tokens, toktypes
        elif toktype == pyllvm.lltok.Error: 
            print(f"an pyllvm.lltok.Error error {s} ")
            return '', ''
        toktypes.append(toktype)

def infix_to_prefix(tokens): 
    try: 
        assert isinstance(tokens, str) or isinstance(tokens, list)
        if isinstance(tokens, str): 
            tokens = tokens.split(' ')
        prefix = [] 
        par = 0
        pars = [0] * 100
        position = dict()
        for i in range(len(tokens)):
            tok = tokens[i] 
            if tok == '[' or tok == '{': 
                pars[par]+=1
                par+=1 
                position[par] = len(prefix)
                prefix.extend(['placeholder','placeholder'])
            elif tok == '(': 
                pars[par]+=1
                par+=1 
                position[par] = len(prefix)
                prefix.append(tok)
            elif (tok == ']' or tok == '}') and par > 0: 
                prefix[position[par]] = f"ARR" if tok == ']' else f"STRUCT"
                prefix[position[par]+1] = str(pars[par])
                pars[par] = 0
                par-=1 
            elif tok == ')': 
                pars[par] = 0
                par-=1 
                prefix.append(tok)
            elif tok == ",": 
                if par == 0 or prefix[position[par]] == '(':  
                    prefix.append(tok)       
            elif tok == '*': 
                pos = 0 
                if get_one_llvm_toktype(tokens[i-1]) in set([pyllvm.lltok.LocalVar,pyllvm.lltok.Type]): 
                    pos = -1
                elif tokens[i-1] == ']' or tokens[i-1] == '}' or tokens[i-1] == ')': 
                    pos = position[par+1]
                elif tokens[i-1] == '*': 
                    index = i-1
                    while tokens[index-1] == '*': 
                        index-=1
                    if get_one_llvm_toktype(tokens[index-1]) in set([pyllvm.lltok.LocalVar,pyllvm.lltok.Type]): 
                        pos = -1
                    elif tokens[index-1] == ']' or tokens[index-1] == '}':
                        pos = position[par+1]
                prefix.insert(pos, tok)
            else: 
                prefix.append(tok)
                pars[par]+=1
            
        if par == 0:
            return prefix
        else: 
            print(f"par != 0 in infix to prefix at {str(tokens.join(' '))}", flush=True)
            return tokens  
    except Exception as e: 
        print(f"{e} error in infix to prefix at {str(tokens)}", flush=True)
        return tokens  
    
def remove_globals(tokens): 
    try: 
        # global_strings_index = [] 
        # global_global_index = []
        global_constants_index = []
        for i in range(len(tokens)): 
            #add proper definition and declaration 
            # if tokens[i][:5] == '@.str':
            #     global_strings_index.append(i)
            # elif tokens[i][0] == '@': 
            #     j = i+1
            #     while tokens[i] != 'NEW_LINE': 
            #         if tokens[j] == 'global': 
            #             global_global_index.append(i)
            #             break
            if tokens[i][0] == '%' and not re.fullmatch("%\d+",tokens[i]): 
                global_constants_index.append(i)

        # for i in global_global_index[:]: 
        #     # print(str(len(tokens)) + " " + str(i))
        #     temp_name = tokens[i]
        #     if len(tokens) > i+11 and tokens[i+11][0]+tokens[i+11][-1] == '\"\"': 
        #         tokens[i] = f'@\"{temp_name[1:]}:{tokens[i+11][1:]}'
        #         tokens[i] = tokens[i].replace('\\', '~')
        #         for j in global_strings_index[:]: 
        #             if tokens[j] == temp_name: 
        #                 tokens[j] = tokens[i]
        #                 global_strings_index.remove(j)
        #         global_strings_index.remove(i)   


        if global_constants_index != []: 
            defs = dict()
            for i in global_constants_index: 
                temp_name = tokens[i]
                res_name = ''
                if temp_name not in defs.keys(): 
                    if tokens[i+1] == '=' and tokens[i+2] == 'type': 
                        index = i + 3
                        while tokens[index] != 'NEW_LINE' :
                            res_name += ' ' + tokens[index] 
                            index+=1 
                        res_name = res_name.replace('\"', '\'').strip()
                        for i in res_name.split(" "): 
                            if i in defs.keys(): 
                                res_name = res_name.replace(i,defs[i])
                        defs[temp_name] = res_name
                    else: 
                        break
            # for k, v in defs.items(): 
            #     for i in v.split(" "): 
            #         if i in defs.keys(): 
            #             defs[k] = defs[k].replace(i,defs[i])
            for i in global_constants_index: 
                if tokens[i] in defs.keys(): 
                    if i+1 >= len(tokens) or i+2 >= len(tokens): 
                        tokens[i] = defs[tokens[i]]
                    elif (tokens[i+1] != '=' and tokens[i+2] != 'type'): 
                        tokens[i] = defs[tokens[i]]
            
        return tokens     
    except MemoryError as err: 
        print(f"memoery error and {len(defs)}", flush=True) 
        return ''
    except Exception as e:
        print(f"a non memory error exception {e} for remove_global tokens", flush=True) 
        return ''

def get_llvm_tokens_and_types(s):
    # try: 
        tokens = []
        toktypes = [] 
        assert isinstance(s, str)
        s = s.replace(r'\r', '')
        lex = pyllvm.lexer(s)
        isFirst = True; 
        while True:
            if isFirst:
                toktype, tok = lex.getFirstTok()
                isFirst = False 
            else: 
                toktype, tok = lex.getTok()
            #tok = strip_llvm_comment(tok.strip())

            tok = tok.strip()
            if(tok != ''): 
                tokens.append(tok)
            if len(tokens) > 0 and (tokens[-1] == '<' or tokens[-1] == '>'): 
                del tokens[-1]
                del toktypes[-1]
            if toktype == pyllvm.lltok.Eof or toktype == pyllvm.lltok.Error:
                return tokens, toktypes
            toktypes.append(toktype)
    # except KeyboardInterrupt:
    #     raise
    # except:
    #     print("a problem in get_llvm_tokens_and_types", flush=True)
    #     return [], [] 

def add_tok(tok, tokens, par, items_counts, end_par, is_type_len, num_of_star, pars, add_comma):
    if tok == "ARR" or tok == "STRUCT": 
        if par != 0: 
            # pars[par] +=1
            items_counts[par]-=1
            # if add_comma and tokens[-1] not in set(['[','{','x','(']): 
            #     tokens.append(',')
        tokens.append(('[' if tok=="ARR" else '{') )
        par+=1 
        pars[par] = 0
        end_par[par] = ']' if tok=="ARR" else '}'

        if num_of_star > 0: 
            end_par[par] += ' * ' * num_of_star
            num_of_star = 0 
        is_type_len = True
        items_counts[par] = -1
    elif tok == '(': 
        if par != 0: items_counts[par]-=1
        tokens.append('(')
        par+=1 
        items_counts[par] = 99999
        end_par[par] = ')'
        if num_of_star > 0: 
            end_par[par] += ' * ' * num_of_star
            num_of_star = 0 
    elif tok == ')': 
        if par != 0: 
            tokens.extend(end_par[par].strip().replace("  ", " ").split(" "))
            par-=1 
    elif is_type_len: 
        items_counts[par] = int(tok)
        is_type_len = False
    elif tok == '*': 
        num_of_star += 1
    else:
        tokens.append(tok)
        if num_of_star > 0: 
            tokens.extend(['*'] * num_of_star)
            num_of_star = 0 
        if tok != ',' and par != 0: 
            items_counts[par] -=1 

    while items_counts[par]== 0 and par > 0: 
        tokens.extend(end_par[par].strip().replace("  ", " ").split(" "))
        pars[par] = 0 
        par-=1
        
        
    return par, items_counts, end_par, is_type_len, num_of_star, pars, add_comma



def get_one_llvm_toktype(s): 
    assert isinstance(s, str) and s.strip().find(" ") == -1
    lex = pyllvm.lexer(s)
    toktype = lex.getTokType() 
    return toktype 
    
def detokenize_llvm(s):
    try: 
        assert isinstance(s, list) or isinstance(s, str) 
        if isinstance(s, list): 
            s = ' '.join(s)
        s = s.replace(" ▁ ", " ")
        tokens = []
        
        for line in re.split('NEW_LINE', s): 
            tok = ''
            i = 0
            par = 0 
            items_counts = [0] * 100000
            end_par = dict()  
            is_type_len = False
            add_comma = True
            num_of_star = 0
            pars = dict()
            toks_line = []
            while i < len(line):
                if line[i] == ' ' or line[i] == '\n': 
                    if tok != '': par, items_counts, end_par, is_type_len, num_of_star, pars, add_comma = \
                            add_tok(tok, toks_line, par, items_counts, end_par, is_type_len, num_of_star, pars, add_comma)
                    tok = ''
                elif line[i] == '\"': 
                    tok += line[i] 
                    i+=1
                    while i < len(line) and line[i] != '\"': 
                        tok += line[i] 
                        i+=1
                    tok += line[i] 
                    i+=1
                    par, items_counts, end_par, is_type_len, num_of_star, pars, add_comma = \
                        add_tok(tok, toks_line, par, items_counts, end_par, is_type_len, num_of_star, pars, add_comma)
                    tok = ''
                else: 
                    tok += line[i]
                i+=1
            
            if tok!='': par, items_counts, end_par, is_type_len, num_of_star, pars, add_comma = \
                            add_tok(tok, toks_line, par, items_counts, end_par, is_type_len, num_of_star, pars, add_comma)
            toks_line = detokenize_instruction_printer(toks_line)
            tokens.extend(toks_line)
            tokens.append("NEW_LINE")
        tokens = add_declares(tokens)
        tokens = name_variables(tokens)
       
        lines = re.split('NEW_LINE', ' '.join(tokens))
        untok_s = "\n".join(lines)
        # untok_s = indent_lines(lines)
        return untok_s
    except KeyboardInterrupt:
        raise
    except Exception as e:
        print(f"problem in detokenize_llvm {e}", flush=True)
        return ''




def add_declares(toks): 
    try: 
        globals_defs = dict()
        for i, tok in enumerate(toks): 
            if not toks[i] in globals_defs.keys(): 
                if tok[0] == '%' and re.findall('%\d+', tok) == []: 
                    assert tok.find("%struct") != -1, f"tok {tok}"
                    expression = (tok + '= type { i32 }').split(" ")
                    expression.append('NEW_LINE')
                    globals_defs[tok] = expression
                if(tok[:5] == "@.str"): 
                    j = i
                    while toks[j-1] == '*': 
                        j-=1
                    assert toks[j-1] == ']' and toks[j-2] == 'i8' and toks[j-3] == 'x', f"weird string {toks[i-5:i+10]}"
                    str_length = int(toks[j-4])
                    str_value = "\"" +''.join(random.choice('abcdefghijklmnopqrstuvwxyz') for _ in range(str_length))+"\"" 
                    expression = f"{tok} = private unnamed_addr constant [ {str_length} x i8 ] c".split(" ")
                    expression.extend((str_value,'NEW_LINE'))
                    globals_defs[tok] = expression
                elif i-2 >= 0 and tok[0] == '@':
                    j = i-1
                    type, j = get_reverse_type(toks, j)

                    args = ''
                    if type.find('...') != -1:
                        args = ' ( ... ) '
                        type, j = get_reverse_type(toks, j-1) 
                        
                    if toks[j-1] == 'call': 
                        expression = f'declare {type} {tok}'
                        assert toks[i+1] == '('
                        if args != '':
                            expression += args 
                        else: 
                            args, _ = extract_arguments_llvm(toks[i:])
                            if args == []: 
                                continue 
                            elif args == ['None']: 
                                expression +=" ( ) "
                            else: 
                                expression += f" ( {' , '.join(args)} ) "
                        expression = expression.split(" ")
                        expression.append('NEW_LINE')
                    else: 
                        expression = (toks[i] + " = internal global " + type + " zeroinitializer ").split(' ')
                    expression.append('NEW_LINE')
                    while toks[j-1] != 'NEW_LINE': 
                        j-=1 
                        if toks[j] == 'define':
                            expression = []
                            break  

                    globals_defs[tok] = expression
        for definition in globals_defs.values(): 
            toks = definition + toks
        #             
        #     if (toktypes[i] == pyllvm.lltok.kw_call): 
        #         index = i 
        #         while index < len(toktypes) -1 and toktypes[index] != pyllvm.lltok.GlobalVar: 
        #             index+=1 
        #         if not toks[index] in defs.keys(): 
        #             func_name = toks[index] 
        #             func=" ".join(toks[index:])
        #             if func.find('(') != -1 and toktypes[index-1] == pyllvm.lltok.Type:
        #                 args, ___ = extract_args(func)
        #                 if args == []: 
        #                     continue 
        #                 elif args == ['None']: 
        #                      expression = f" declare {toks[index-1]} {func_name} ( ) "
        #                 else: 
        #                     expression = f" declare {toks[index-1]} {func_name} ( {' , '.join(args)} ) "
        #                 defs[func_name] = expression
        #                 s += expression
        #             elif toktypes[index-1] == pyllvm.lltok.rparen:
        #                 par = 0 
        #                 args = ''
        #                 while toktypes[index-1] != pyllvm.lltok.Type and index >=i: 
        #                     args = toks[index-1] + " " + args
        #                     index -=1
        #                 if args == '': 
        #                     continue 
        #                 expression = f" declare {toks[index-1]} {func_name} ( {args} ) "
        #                 defs[func_name] = expression
        #                 s += expression
        # s = re.sub(' +', ' ', s) 
        # return s
        return toks
    except Exception as e: 
        print(f"a problem in add+declare {e}", flush=True)
        return toks

def get_reverse_type(toks, j):
    type = ''
    while toks[j] == '*': 
        j-=1
    if (toks[j] == ']' or toks[j] == '}'): 
        type = ''
        par = 0 
        while True:
            if toks[j] == ']' or toks[j] == '}':
                par += 1
            elif toks[j] == '[' or toks[j] == '{':
                par -= 1
            type = tok + ' ' + type
            if par == 0:
                break
            j-=1
    elif get_one_llvm_toktype(toks[j]) == pyllvm.lltok.Type: 
        type = toks[j]

    return type, j


def name_variables(tokens): 
    variable_dict = {}
    for i, tok in enumerate(tokens): 
        if re.findall('%\d+', tok) != []: 
            if tok not in variable_dict.keys():
                variable_dict[tok] = [i]
            else:
                variable_dict[tok].append(i)
    for k, v in variable_dict.items(): 
        chars = 'abcdefghijklmnopqrstuvwxyz'
        temp_name = '%'+''.join(random.choice(chars) for _ in range(5))
        for i in v: 
            tokens[i] = temp_name

    # print(variable_dict)   
    return tokens



def extract_functions_llvm(s):
    # assert isinstance(s, str) or isinstance(s, list)
    # if isinstance(s, list):
    #     tokens = s
    # else:
    if(s.find("DOCUMENT_ID")!= -1):
        s = s[s.index("\">")+2:]
        s = s[:s.index("</DOCUMENT>")]
    tokens = s.split(" ")
    i = -1
    functions = []
    while True:
        if(i+1 < len(tokens)): 
            i+=1
            tok = tokens[i]
        else:
            break
        if tok == 'define':
            par = 1
            firstBrace = True
            function = []
            while True: 
                function.append(tok)
                if tok == '(' and firstBrace: 
                    firstBrace = False
                elif tok == '(': 
                    par+=1
                elif tok == ')':
                    par-=1
                if par == 0:
                    break
                if(i+1 < len(tokens)): 
                    i+=1
                    tok = tokens[i]
                else:
                    break
            i+=1
            tok = tokens[i]
            firstBrace = True
            par = 1
            while True:
                function.append(tok)
                if tok == '{' and firstBrace: 
                    firstBrace = False
                elif tok == '{': 
                    par+=1
                elif tok == '}':
                    par-=1
                if par == 0:
                    break
                if(i+1 < len(tokens)): 
                    i+=1
                    tok = tokens[i]
                else:
                    break
            if par == 0:
                function = ' '.join(function)
                function = function.strip()
                #do i need this?
                # if not re.sub('[^ ]*[ ][(][ ]\w*([ ][,][ ]\w*)*[ ][)]', "", function[:function.index('{')]).strip().startswith('{'):
                functions.append(function)
    return functions, [] 

def get_function_name_llvm(s):
    return get_first_token_before_first_parenthesis(s)

def extract_arguments_llvm(f):
    try: 
        assert isinstance(f, str) or isinstance(f, list)
        if isinstance(f, str):
            f = f.split(' ')
        types = []
        names = []
        par = 0
        arguments = []
        f = f[f.index('('):]
        arg = ''
        for tok in f:
            if tok == '(':
                par += 1
            elif tok == ')':
                par -= 1
            if par == 1 and tok == ',': 
                arguments.append(arg[:-1])
                arg = ''
            else: 
                arg += tok + " " 
            if par == 0:
                arguments.append(arg[:-1])
                break
        #delete ( and )
        arguments[0] = arguments[0][2:]
        arguments[-1] = arguments[-1][:-2]
        if arguments == []:
            return ['None'], ['None']
        argtypes = []
        modifiers = [] 
        for i in range(len(arguments)):
            if(arguments[i].find(' ') > -1):
                index = arguments[i].index(' ')
                if arguments[i][index+1] == "*": 
                    argtypes.append(arguments[i][:index+2])
                    modifiers.append(arguments[i][index+2:].strip())
                else:
                    argtypes.append(arguments[i][:index])
                    modifiers.append(arguments[i][index:].strip())
            else: 
                argtypes.append(arguments[i])
                modifiers.append('')    
        return argtypes, modifiers
    except: 
        print("no arg after define (", flush=True)
        # print("arguments" + str(arguments))
        return [], []

def get_first_token_before_first_parenthesis(s):
    try:
        assert isinstance(s, str) or isinstance(s, list)
        if isinstance(s, str):
            s = s.split()
        return s[s.index('(') - 1]
    except: 
        return ""


def get_function_name_java(s):
    return get_first_token_before_first_parenthesis(s)


def get_function_name_cpp(s):
    return get_first_token_before_first_parenthesis(s)


def extract_arguments_java(f):
    return extract_arguments_java_using_parentheses(f)


def extract_arguments_cpp(f):
    return extract_arguments_java_using_parentheses(f)


def extract_arguments_java_using_parentheses(f):
    f = f.split(' ')
    types = []
    names = []
    par = 0
    arguments = []
    f = f[f.index('('):]
    for tok in f:
        if tok == '(':
            par += 1
        elif tok == ')':
            par -= 1
        arguments.append(tok)
        if par == 0:
            break
    arguments = ' '.join(arguments[1:-1])
    if arguments == '':
        return ['None'], ['None']
    arguments = arguments.split(',')
    for arg in arguments:
        bracks = re.findall('\[ \]', arg)
        bracks = ' '.join(bracks)
        arg = arg.replace(bracks, '')
        arg = arg.strip()
        arg = re.sub(' +', ' ', arg)
        t = ' '.join(arg.split(' ')[:-1] + [bracks])
        n = arg.split(' ')[-1]
        types.append(t)
        names.append(n)
    return types, names


if __name__ == '__main__':
    # parser
    parser = argparse.ArgumentParser()
    parser.add_argument('--input_file', default='',
                        help='The file to strip comments from.')
    parser.add_argument('--l', default='python',
                        choices=['python', 'java'], help='language of input code')
    args = parser.parse_args()
    assert args.input_file == '' or os.path.isfile(args.input_file)

    # read from standard input, or from input file
    if args.input_file == '':
        source = sys.stdin.read()
    else:
        with io.open(args.input_file, encoding='utf-8') as f:
            source = f.read()

    tokenize = globals()[f"tokenize_{args.l}"]
    # tokenize
    print(tokenize(source), end='')
