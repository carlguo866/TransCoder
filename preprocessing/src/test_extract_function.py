# from XLM.src.utils import add_declarations_and_definitions
from preprocessing.src.code_tokenizer import detokenize_llvm, get_llvm_tokens_and_types, tokenize_llvm, extract_functions_llvm, extract_arguments_llvm
import pyllvm
import re
def add_declarations_and_definitions(s): 

    toks, toktypes = get_llvm_tokens_and_types(s)
    print(len(toks))
    defs = dict()
    s = s.replace("\n", "")
    for i in range(len(toks)): 
        if not toks[i] in defs.keys(): 
            if(toktypes[i] == pyllvm.lltok.GlobalVar): 
                if(toks[i][:6] == "@\".str"): 
                    # counts of "~"
                    counts = toks[i].count("~")
                    str_value = "\"" + toks[i].replace("~","\\").split(":")[1]
                    str_length = len(str_value) - 3*counts - 1
                    expression = f"{toks[i]} = private unnamed_addr constant [{str_length} x i8] c{str_value} "
                    defs[toks[i]] = expression
                    s = expression + s
                elif toktypes[i-1] == pyllvm.lltok.star:
                    expression = ''
                    if (toktypes[i-2] == pyllvm.lltok.rbrace or toktypes[i-2] == pyllvm.lltok.rsquare): 
                        arg = ''
                        par = 0 
                        for index in range(i-2, 0, -1):
                            tok = toks[index]
                            if tok == ']' or tok == '}':
                                par += 1
                            elif tok == '[' or tok == '{':
                                par -= 1
                            arg = tok + ' ' + arg
                            if par == 0:
                                break
                        expression = toks[i] + " = internal global " + arg.strip() + " zeroinitializer "
                    elif toktypes[i-2] == pyllvm.lltok.Type: 
                        expression = toks[i] + " = internal global " + toks[i-2] + " zeroinitializer "
                    defs[toks[i]] = expression
                    s = expression + s
        if (toktypes[i] == pyllvm.lltok.kw_call): 
            index = i 
            while toktypes[index] != pyllvm.lltok.GlobalVar: 
                index+=1 
            if not toks[index] in defs.keys(): 
                func_name = toks[index] 
                if(" ".join(toks[index:].find("(")!=1) and toktypes[index-1] == pyllvm.lltok.Type:
                    args, ___ = extract_arguments_llvm(" ".join(toks[index:]))
                    expression = f" declare {toks[index-1]} {func_name} ( {' , '.join(args)} ) "
                elif toktypes[index-1] == pyllvm.lltok.rparen:
                    par = 0 
                    args = ''
                    while toktypes[index-1] != pyllvm.lltok.Type and index >=i: 
                        args = toks[index-1] + " " + args
                        index -=1
                    expression = f" declare {toks[index-1]} {func_name} ( {args} ) "
                defs[func_name] = expression
                s += expression
    s = re.sub(' +', ' ', s) 
    return s


if __name__ == '__main__':
    fn = open("/home/carl/TransCoder/data/proper_eval/llvm/test.cpp_sa-llvm_sa.llvm.functions_standalone.tok", 'r')
    #test tokenizer
    outF = open("functions-output.ll", "w")
    for i in range(5, 10):
        line = fn.readline()
        # write line to output file
        line = add_declarations_and_definitions(line[line.index("|")+1:])
        outF.write( line + "\n")
    outF.close()

    # fn = open("functions-output.ll", "r").read()
    # print(fn[630:700])


    # fn = open("/home/carl/TransCoder/input_test.ll", 'r').read()
    # tokenized = tokenize_llvm(fn)
    # outF = open("functions-output.ll", "w")
    # functions, __ = extract_functions_llvm(" ".join(tokenized))
    # #print(functions)
    # # outF.write(" ".join(tokenized))
    # for line in functions: 
    #     outF.write( line + "\n")
    # outF.close()
