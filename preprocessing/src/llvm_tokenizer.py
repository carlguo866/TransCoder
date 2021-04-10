import pyllvm


def tokenize_llvm(s, keep_comments=False):
   # try:
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

            tokens.append(tok)
            if tok == pyllvm.lltok.Eof: # or tok == pyllvm.lltok.Error:
                return tokens
  #  except:
  #      return []


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
