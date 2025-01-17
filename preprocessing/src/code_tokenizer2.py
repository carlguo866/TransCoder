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
from time import time
from io import BytesIO

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

uints = frozenset([ pyllvm.lltok.GlobalID, pyllvm.lltok.LocalVarID, pyllvm.lltok.AttrGrpID,
  pyllvm.lltok.SummaryID])

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
    tok = tokenize_v14_international(tok)
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
    tokens = []
    assert isinstance(s, str)
    s = s.replace(r'\r', '')
    hash = str(random.getrandbits(128))
    parsed_code = idx.parse(
        hash + '_tmp.cpp', args=['-std=c++11'], unsaved_files=[(hash + '_tmp.cpp', s)], options=0)
    for tok in parsed_code.get_tokens(extent=parsed_code.cursor.extent):
        tokens.append((tok.spelling, tok.kind))
    return tokens


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
    function = re.sub(
        '[#][ ][d][e][f][i][n][e][ ][^ ]*[ ][(][ ].*?[ ][)][ ][{][ ].*[ ][}]', "", function)
    function = re.sub(
        '[#][ ][d][e][f][i][n][e][ ][^ ]*[ ]([(][ ])?["].*?["]([ ][)])?', "", function)
    function = re.sub(
        '[#][ ][d][e][f][i][n][e][ ][^ ]*[ ]([(][ ])?\d*\.?\d*([ ][+-/*][ ]?\d*\.?\d*)?([ ][)])?', "", function)
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

def get_llvm_type(tokens, i, add_comma=0): 
    #add_comma: 1 means only types; 2 means with value
    try: 
        ty = []
        word_types = set(['half', 'bfloat', 'float', 'double', 
                    'fp128', 'x86_fp80', 'ppc_fp128', 'x86_amx', 'x86_mmx'])
        if tokens[i] in word_types:
            ty.append(tokens[i])
            i+=1
        elif re.fullmatch("i\d+", tokens[i]) !=None and (int(tokens[i][1:])==1 or int(tokens[i][1:]) %8 == 0): 
            ty.append(tokens[i])
            i+=1
        elif tokens[i][0] == '%' and re.fullmatch("%\d+", tokens[i]) == None: 
            ty.append(tokens[i])
            i+=1
        elif tokens[i][0] == '@': 
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

        while i < len(tokens) and tokens[i] == '*':
            ty.append(tokens[i])
            i+=1

        return ty, i 
    except:
        print("an error " + str(tokens) + "\n" + str(ty) )
        return ty, i
            
            

def tokenize_instruction_printer(tokens, toktypes):

    if len(tokens)>0 and tokens[0] == 'define': 
        tokens, toktypes = infix_to_prefix(tokens[:-1], toktypes[:-1])
        tokens.append('{')
        toktypes.append(pyllvm.lltok.lbrace)
        return tokens, toktypes
    if len(tokens) == 1 and tokens[0] == '}':
        #no infix to prefix
        return tokens, toktypes

    i = 0 
    par = 0
    while i < len(tokens): 
        if tokens[i] in set(['[', '(', '{']): par +=1 
        elif tokens[i] in set([']', ')', '}']): par -=1

        
        if tokens[i] == 'load': 
            i+=1
            if tokens[i] == 'volatile': i+=1
            __, i = get_llvm_type(tokens, i) 
            assert tokens[i] == ',', f"no comma after type {tokens[i]} in {str(tokens)}"
            ty, j = get_llvm_type(tokens, i+1) 
            del tokens[i:j]
            del toktypes[i:j] 
            break
        if tokens[i] == 'getelementptr':
            i+=1
            if tokens[i] == 'inbounds': i+=1
            if tokens[i] == '(': 
                i+=1 
                par+=1 
            __, i = get_llvm_type(tokens, i) 
            assert tokens[i] == ',', f"no comma after type {tokens[i]} in {str(tokens)}"
            ty, j = get_llvm_type(tokens, i+1) 
            del tokens[i:j]
            del toktypes[i:j] 
            i-=1
            
        if tokens[i] == ',' and par == 0 and tokens[0] == 'store': 
            ty, j = get_llvm_type(tokens, i+1)
            del tokens[i:j]
            del toktypes[i:j]
            break
        i+=1
    
    tokens, toktypes = infix_to_prefix(tokens, toktypes)
    return tokens, toktypes
                
def detokenize_instruction_printer(tokens):
    try: 
        i = 0 
        while i < len(tokens): 
            ty, _ = get_llvm_type(tokens, i)
            if ty != [] and len(ty) >1: 
                ty, j  = get_llvm_type(tokens, i, add_comma=1)
                tokens[i:j] = ty 
                i += len(ty)-1
            if tokens[i] == 'load': 
                i+=1
                if tokens[i] == 'volatile': i+=1
                ty, j = get_llvm_type(tokens, i)
                tokens[i:j] = ty 
                ty = [','] + ty + ['*'] + [tokens.pop()]
                tokens.extend(ty)
                i += len(ty) -1
            elif tokens[i] == 'store': 
                i+=1
                if tokens[i] == 'volatile': i+=1
                ty, j = get_llvm_type(tokens, i)
                tokens[i:j] = ty
                ty = [','] + ty + ['*'] + [tokens.pop()]
                tokens.extend(ty)
                i += len(ty) -1
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
            elif tokens[i] == 'constant' or tokens[i] == 'global': 
                i+=1 
                ty, j  = get_llvm_type(tokens, i, add_comma=1)
                tokens[i:j] = ty 
                i += len(ty)
                ty, j  = get_llvm_type(tokens, i, add_comma=2)
                tokens[i:j] = ty
                i += len(ty) - 1
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
        global_strings_index = [] 
        global_constants_index = [] 
        local_constants_index = []

        #delete top and bottom irrelevant stuff
        if s.find('attributes') != -1: 
            s = s[:s.index('attributes')]
        if s.find("\"x86_64-unknown-linux-gnu\"") != -1: 
            s = s[s.index("\"x86_64-unknown-linux-gnu\"")+len("\"x86_64-unknown-linux-gnu\"\n\n"):]
        arr = s.split('\n')
        tokens = [] 
        toktypes = [] 
        total_len = 0 
        for line in arr: 
            toks_line, toktypes_line = tokenize_llvm_line(line)
            toks_line, toktypes_line = tokenize_instruction_printer(toks_line, toktypes_line)
            tokens.extend(toks_line)
            toktypes.extend(toktypes_line)
            if tokens[-1] != "NEW_LINE": 
                tokens.append("NEW_LINE")
                toktypes.append("kw_newline")
            
        
        assert len(tokens) == len(toktypes), f"len(tokens) != len(toktypes) {len(tokens)} and {len(toktypes)} "
        # for i in global_strings_index: 
        #     assert toktypes[i] == pyllvm.lltok.GlobalVar or toktypes[i] == pyllvm.lltok.LocalVar, f"{i} does not match string global; toktype is {toktypes[i]}"
        # for i in global_constants_index: 
        #     assert toktypes[i] == pyllvm.lltok.GlobalVar or toktypes[i] == pyllvm.lltok.LocalVar, f"{i} does not match constant; toktype is {toktypes[i]}"
        start = time()
        tokens, toktypes = remove_globals(tokens, toktypes)
        print(time()-start)
        return tokens

    # except KeyboardInterrupt:
    #     raise
    # except:
    #     return []
@profile
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
            if toktypes[-1] in strings:
                try:
                    tokens[-1] = strip_llvm_comment(tokens[-1])
                    tokens[-1] = process_string_llvm(tokens[-1], LLVM_CHAR2TOKEN, LLVM_TOKEN2CHAR, False)
                except UnicodeDecodeError:
                    print(tokens[-1])
            elif(toktypes[-1] == pyllvm.lltok.less):
                tokens[-1] = "<"
            elif(toktypes[-1] == pyllvm.lltok.rbrace):
                tokens[-1] = "}"
            #remove packed struct
            elif (len(toktypes)>=2 and toktypes[-1] == pyllvm.lltok.greater 
                and toktypes[-2] == pyllvm.lltok.rbrace):
                del tokens[-1]; del toktypes[-1]
            elif (len(toktypes)>=2 and toktypes[-1] == pyllvm.lltok.lbrace 
                and toktypes[-2] == pyllvm.lltok.less):
                del tokens[-2]; del toktypes[-2]   
            #clean ; comments
            elif (toktypes[-1] == pyllvm.lltok.APSInt):
                assert re.findall(r"-*\d+",tokens[-1])[0] == str(lex.getAPSIntVal()), re.findall(r"-*\d+",tokens[-1])[0]  + ' ' + str(lex.getAPSIntVal())
                tokens[-1] = (str(lex.getAPSIntVal()))
            elif toktypes[-1] == pyllvm.lltok.LabelID:
                tokens[-1] = re.findall(r"\d+",tokens[-1])[0] + ":"
            elif toktypes[-1] in uints:
                tokens[-1] = str(tokens[-1][0]) + re.findall(r"\d+",tokens[-1])[0] 
                if toktypes[-1] == pyllvm.lltok.AttrGrpID: 
                    del tokens[-1]
                    del toktypes[-1]
            elif toktypes[-1] == pyllvm.lltok.kw_internal: 
                del tokens[-1]
                del toktypes[-1]

        if len(toktypes) >=2 and toktypes[-2] == pyllvm.lltok.kw_align and toktypes[-1] == pyllvm.lltok.APSInt: 
            if len(toktypes) >=3 and toktypes[-3] == pyllvm.lltok.comma: 
                del toktypes[-3:]
                del tokens[-3:] 
            else: 
                del toktypes[-2:]
                del tokens[-2:] 

        if toktype == pyllvm.lltok.Eof:
            return tokens, toktypes
        if toktype == pyllvm.lltok.Error: 
            print("shit an error")
            return tokens, toktypes
        toktypes.append(toktype)

def infix_to_prefix(tokens, toktypes): 
    assert isinstance(tokens, str) or isinstance(tokens, list)
    if isinstance(tokens, str): 
        tokens = tokens.split(' ')
    prefix = [] 
    prefix_types = [] 

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
            prefix_types.extend(['kw_arr_identifier','arr_len'] if tok == '[' else ['kw_struct_identifier','struct_len'])
        elif tok == ']' or tok == '}': 
            prefix[position[par]] = f"ARR" if tok == ']' else f"STRUCT"
            prefix[position[par]+1] = str(pars[par])
            pars[par] = 0
            par-=1 
        elif tok == ',': 
            if par == 0:  
                prefix.append(tok)
                prefix_types.append(toktypes[i])
        elif tok == '*': 
            pos = 0 
            if toktypes[i-1] == pyllvm.lltok.Type or toktypes[i-1] == pyllvm.lltok.LocalVar: 
                pos = -1
            elif tokens[i-1] == ']' or tokens[i-1] == '}': 
                pos = position[par+1]
            elif tokens[i-1] == '*': 
                index = i-1
                while tokens[index-1] == '*': 
                    index-=1
                if toktypes[index-1] == pyllvm.lltok.Type or toktypes[index-1] == pyllvm.lltok.LocalVar: 
                    pos = -1
                elif tokens[index-1] == ']' or tokens[index-1] == '}':
                    pos = position[par+1]
            prefix.insert(pos, tok)
            prefix_types.insert(pos, toktypes[i])
        else: 
            prefix.append(tok)
            prefix_types.append(toktypes[i])
            pars[par]+=1
        
    if par == 0:
        return prefix, prefix_types
    else: 
        print("error in infix to prefix")
        return tokens, toktypes  
    
def remove_globals(tokens, toktypes): 
    global_strings_index = [] 
    global_constants_index = []
    for i in range(len(toktypes)): 
        #add proper definition and declaration 
        if toktypes[i] == pyllvm.lltok.GlobalVar and tokens[i][:5] == '@.str':
            global_strings_index.append(i)
        elif toktypes[i] == pyllvm.lltok.LocalVar: 
            global_constants_index.append(i)
                
    for i in global_strings_index[:]: 
        # print(str(len(tokens)) + " " + str(i))
        temp_name = tokens[i]
        if len(toktypes) > i+10 and toktypes[i+10] == pyllvm.lltok.StringConstant: 
            tokens[i] = f'@\"{temp_name[1:]}:{tokens[i+10][1:]}'
            tokens[i] = tokens[i].replace('\\', '~')
            for j in global_strings_index[:]: 
                if tokens[j] == temp_name: 
                    tokens[j] = tokens[i]
                    global_strings_index.remove(j)
            global_strings_index.remove(i)   
    defs = dict()
    for i in global_constants_index[:]: 
        temp_name = tokens[i]
        res_name = ''
        if temp_name not in defs.keys(): 
            if toktypes[i+1] == pyllvm.lltok.equal and toktypes[i+2] == pyllvm.lltok.kw_type: 
                index = i + 3
                while tokens[index] != 'NEW_LINE' :
                    res_name += ' ' + tokens[index] 
                    index+=1 
                res_name = res_name.replace('\"', '\'').strip()
                for i in res_name.split(" "): 
                    if i in defs.keys(): 
                        res_name = res_name.replace(i,defs[i])
                defs[temp_name] = res_name
    for k, v in defs.items(): 
        for i in v.split(" "): 
            if i in defs.keys(): 
                defs[k] = defs[k].replace(i,defs[i])
        # print(defs[k])
        # tokenized, types = get_llvm_tokens_and_types(defs[k])
        # tokenized, _ = infix_to_prefix(tokenized, types)
        # defs[k] = " ".join(tokenized) 
    for i in global_constants_index: 
        if tokens[i] in defs.keys(): 
            if i+1 >= len(toktypes) or i+2 >= len(toktypes): 
                tokens[i] = defs[tokens[i]]
            elif (toktypes[i+1] != pyllvm.lltok.equal and toktypes[i+2] != pyllvm.lltok.kw_type): 
                tokens[i] = defs[tokens[i]]
        
    # for i, num_define in local_constants_index[:]: 
    #     print(len(local_constants_index))
    #     tok_name = tokens[i]
    #     if(re.fullmatch('%\d+',tok_name) == None and re.fullmatch('\d+:',tok_name) == None ): 
    #         continue
    #     res_name =  (''.join(random.choices(string.ascii_uppercase)) + 
    #                     ''.join(random.choices(string.ascii_uppercase+string.digits, k=3)))
    #     tokens[i] = re.sub("\d+",res_name, tok_name) 
    #     for j, num_define2 in local_constants_index[:]: 
    #         if (re.findall("\d+", tokens[j]) != [] and re.findall("\d+", tokens[j])[0] == re.findall("\d+", tok_name)[0] 
    #                 and num_define2 == num_define and i !=j):
    #             tokens[j] = re.sub("\d+",res_name, tokens[j]) 
    #             local_constants_index.pop(local_constants_index.index((j,num_define2) ))
    #     local_constants_index.pop(local_constants_index.index((i,num_define) ))
    return tokens, toktypes     

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
    elif is_type_len: 
        items_counts[par] = int(tok)
        is_type_len = False
    elif tok == '*': 
        num_of_star += 1
    else:
        # if tok == 'constant' or tok == 'global': 
        #     add_comma = False
        # toktype = get_one_llvm_toktype(tok)
        # if add_comma and par != 0 and toktype == pyllvm.lltok.Type and tokens[-1] not in set(['[','{','x','(','to']): 
        #     tokens.append(',')
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
    assert isinstance(s, str)
    lex = pyllvm.lexer(s)
    toktype = lex.getTokType() 
    return toktype 
    
def detokenize_llvm(s):
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
            if line[i]  == ' ': 
                if tok != '': par, items_counts, end_par, is_type_len, num_of_star, pars, add_comma = \
                        add_tok(tok, toks_line, par, items_counts, end_par, is_type_len, num_of_star, pars, add_comma)
                tok = ''
            elif line[i] == '\"': 
                tok += line[i] 
                i+=1
                while line[i] != '\"': 
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
        
        toks_line = detokenize_instruction_printer(toks_line)
        tokens.extend(toks_line)
        tokens.append("NEW_LINE")
    for tok in tokens: 
        if isinstance(tok, list): 
            print( tok)
    lines = re.split('NEW_LINE', ' '.join(tokens))
    untok_s = "\n".join(lines)
    # untok_s = indent_lines(lines)
    return untok_s


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
