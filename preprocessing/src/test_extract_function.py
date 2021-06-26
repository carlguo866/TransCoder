# from XLM.src.utils import add_declarations_and_definitions
from preprocessing.src.code_tokenizer import detokenize_llvm, get_llvm_tokens_and_types, tokenize_llvm, extract_functions_llvm, extract_arguments_llvm
import pyllvm
import re

if __name__ == '__main__':
    # fn = open("/home/carl/TransCoder/data/proper_eval/llvm/test.cpp_sa-llvm_sa.llvm.functions_standalone.tok", 'r')
    # #test tokenizer
    # outF = open("functions-output.ll", "w")
    # for i in range(5, 10):
    #     line = fn.readline()
    #     # write line to output file
    #     line = add_declarations_and_definitions(line[line.index("|")+1:])
    #     outF.write( line + "\n")
    # outF.close()

    # fn = open("functions-output.ll", "r").read()
    # print(fn[630:700])


    fn = open("/home/carl/TransCoder/input_test.ll", 'r').read()
    tokenized = tokenize_llvm(fn)
    outF = open("functions-output.ll", "w")
    functions, __ = extract_functions_llvm(" ".join(tokenized))
    #print(functions)
    # outF.write(" ".join(tokenized))
    for line in functions: 
        outF.write( line + "\n")
    outF.close()
