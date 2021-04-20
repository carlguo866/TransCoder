import pyllvm
import preprocessing.src.code_tokenizer as tokenizer
import re

LLVM_TOKEN2CHAR = {}
LLVM_CHAR2TOKEN = {}

def tokenize_llvm(s, keep_comments=False):
   try:
        tokens = []
        assert isinstance(s, str)
        s = s.replace(r'\r', '')
        print(s)
        lex = pyllvm.lexer(s)
        while True:
            toktype = lex.getTokType()
            #print(toktype)
            if toktype in strings():
                tok = tokenizer.process_string(lex.getStrVal(),LLVM_CHAR2TOKEN, LLVM_TOKEN2CHAR, keep_comments)
            elif toktype in uints():
                tok = str(lex.getUIntVal())
            elif toktype in [pyllvm.lltok.Type]:
                tok = fromty(lex.getTypeVal())
            elif toktype == pyllvm.lltok.APFloat:
                tok = lex.getAPFloatVal()
            elif toktype == pyllvm.lltok.APSInt:
                tok = lex.getAPSIntVal()
            elif toktype != pyllvm.lltok.Eof and toktype != pyllvm.lltok.Error:
                tok = lex.getTokStr().strip()

            tokens.append(tok)
            if toktype == pyllvm.lltok.Eof or toktype == pyllvm.lltok.Error:
                return tokens
   except KeyboardInterrupt:
       raise
   except:
       return []

def detokenize_llvm(s):
    assert isinstance(s, str) or isinstance(s, list)
    if isinstance(s, list):
        s = ' '.join(s)
    # the ▁ character created bugs in the cpp tokenizer
    s = s.replace('ENDCOM', '\n').replace('▁', ' SPACETOKEN ')
    try:
        lex = pyllvm.lexer(s)
    except:
        return ''

    new_tokens = []
    while True:
        toktype = lex.getTokType()
        if toktype == pyllvm.lltok.Eof:
            break
        token = lex.getTokStr().strip()
        print((toktype,token))
        if toktype in strings():
            token = lex.getStrVal()
            new_tokens.append(token.replace('STRNEWLINE', '\n').replace(
                'TABSYMBOL', '\t').replace(' ', '').replace('SPACETOKEN', ' '))
        else:
            new_tokens.append(token)

    lines = re.split('NEW_LINE', ' '.join(new_tokens))
    untok_s = tokenizer.indent_lines(lines)
    return untok_s



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
    #test tokenizer
    tokenized = tokenize_llvm(fn)
    print(tokenized)
    print(len(tokenized))
    #test detokenizer
    detokenized = detokenize_llvm(tokenized)
    print(detokenized)

