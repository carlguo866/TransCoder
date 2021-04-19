import pyllvm


def tokenize_llvm(s, keep_comments=False):
   try:
        tokens = []
        assert isinstance(s, str)
        s = s.replace(r'\r', '')
        print(s)
        lex = pyllvm.lexer(s)
        while True:

            tok = lex.Lex()
            print(tok)
            if tok in strings():
                tok = (tok, lex.getStrVal())
            elif tok in uints():
                tok = (tok, lex.getUIntVal())
            elif tok in [pyllvm.lltok.Type]:
                tok = (tok, fromty(lex.getTypeVal()))
            elif tok == pyllvm.lltok.APFloat:
                tok = (tok, lex.getAPFloatVal())
            elif tok == pyllvm.lltok.APSInt:
                tok = (tok, lex.getAPSIntVal())
            elif tok != pyllvm.lltok.Eof or tok == pyllvm.lltok.Error:
                tok = (tok, lex.getStrVal())
            else:
                tok = (tok, lex.Lex2())
            tokens.append(tok)
            if tok == pyllvm.lltok.Eof or tok == pyllvm.lltok.Error:
                return tokens
   except:
       return []

# def detokenize_llvm(s):
#     assert isinstance(s, str) or isinstance(s, list)
#     if isinstance(s, list):
#         s = ' '.join(s)
#     # the ▁ character created bugs in the cpp tokenizer
#     s = s.replace('ENDCOM', '\n').replace('▁', ' SPACETOKEN ')
#     try:
#         tokens_and_types = get_cpp_tokens_and_types(s)
#     except:
#         return ''
#     new_tokens = []
#     i = 0
#     while i < len(tokens_and_types):
#         token, type = tokens_and_types[i]
#         if type in STRINGS_AND_COMMENTS_TOKEN_KINDS:
#             new_tokens.append(token.replace('STRNEWLINE', '\n').replace(
#                 'TABSYMBOL', '\t').replace(' ', '').replace('SPACETOKEN', ' '))
#             if type == TokenKind.COMMENT:
#                 new_tokens.append('NEW_LINE')
#         elif token == '}':
#             if i < len(tokens_and_types) - 1 and tokens_and_types[i + 1][0] == ';':
#                 new_tokens += ['CB_COLON', 'NEW_LINE']
#                 i += 2
#                 continue
#             if i < len(tokens_and_types) - 1 and tokens_and_types[i + 1][0] == ',':
#                 new_tokens += ['CB_COMA', 'NEW_LINE']
#                 i += 2
#                 continue
#             new_tokens += ['CB_', 'NEW_LINE']
#         elif token == '{':
#             new_tokens += ['OB_', 'NEW_LINE']
#         elif token == '*/':
#             new_tokens += ['*/', 'NEW_LINE']
#         elif token == ';':
#             new_tokens += [';', 'NEW_LINE']
#         else:
#             new_tokens.append(token)
# 
#         if i < len(tokens_and_types) - 1 and tokens_and_types[i + 1][0] in TOK_NO_SPACE_BEFORE:
#             next_token = tokens_and_types[i + 1][0]
#             new_tokens[len(new_tokens) - 1] += next_token
#             if next_token == ';':
#                 new_tokens.append('NEW_LINE')
#             i += 2
#             continue
#         i += 1
# 
#     lines = re.split('NEW_LINE', ' '.join(new_tokens))
# 
#     untok_s = indent_lines(lines)
#     untok_s = untok_s.replace('CB_COLON', '};').replace(
#         'CB_COMA', '},').replace('CB_', '}').replace('OB_', '{')
#     return untok_s
#     return



def strings():
    return set([pyllvm.lltok.ComdatVar,
                pyllvm.lltok.GlobalVar,
                pyllvm.lltok.ComdatVar,
                pyllvm.lltok.LocalVar,
                pyllvm.lltok.MetadataVar,
                pyllvm.lltok.StringConstant,
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

def uints():
    return set([pyllvm.lltok.LabelID, pyllvm.lltok.GlobalID, pyllvm.lltok.LocalVarID, pyllvm.lltok.AttrGrpID,
  pyllvm.lltok.SummaryID])

def fromty(ty):
    if ty.isVoidTy():
        return "void"
    elif ty.isHalfTy():
        return "half"
    elif ty.isFloatTy():
        return "float"
    #elif ty.isBFloatTy():
    #    return "bfloat"
    elif ty.isDoubleTy():
        return "double"
    elif ty.isX86_FP80Ty():
        return "x86_fp80"
    elif ty.isFP128Ty():
        return "fp128"
    elif ty.isPPC_FP128Ty():
        return "ppc_fp128"
    elif ty.isX86_MMXTy():
        return "x86_mmx"
    elif ty.isLabelTy():
        return "label"
   # elif ty.isMetadataTy():
   #     return "metadata"
    elif ty.isTokenTy():
        return "token"
    elif ty.isIntegerTy():
        return "i" + str(ty.getIntWidth())
    assert False

if __name__ == '__main__':
    fn = open("../../data/test_dataset/llvm/O3.txt", 'r').read()
    res = tokenize_llvm(fn)
    print(res)
    print(len(res))
    print('hello world')
