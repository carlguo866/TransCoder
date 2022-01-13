# from XLM.src.utils import add_declarations_and_definitions
from preprocessing.src.code_tokenizer import detokenize_llvm, get_llvm_tokens_and_types, tokenize_cpp, extract_functions_cpp, tokenize_llvm, extract_functions_llvm, extract_arguments_llvm
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


    fn = open("/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pragma.c_dt_pragma_attributes.ll", 'r').read()
    tokenized = tokenize_llvm(fn)
    print(tokenized)
    outF = open("myoutput/functions-output.ll", "w")
    functions, __ = extract_functions_llvm(" ".join(tokenized))
    print(functions)
    #outF.write(" ".join(tokenized))
    for line in functions: 
        outF.write( line + "\n")
    outF.close()

    fn = open("/home/carl/AnghaBench/8cc/extr_vector.c_vec_set.c",'r').read()
    # fn = '''
    # # define NULL ( ( void * ) 0 ) typedef unsigned long size_t ; "adlfnadknfl adlnfkad we i wdaldn" typedef long intptr_t ; typedef unsigned long uintptr_t ; typedef long scalar_t__ ; typedef int bool ; # define false 0 # define true 1 typedef int uint32_t ; struct serializer { int dummy ; } ; int s_wl32 ( struct serializer * , int ) ; __attribute__ ( ( used ) ) static inline void s_wlf ( struct serializer * s , float f ) { s_wl32 ( s , * ( uint32_t * ) & f ) ; }
    # '''
    tokenized = tokenize_cpp(fn)
    outF = open("myoutput/functions-output.txt", "w")
    print("\n")
    functions, __ = extract_functions_cpp(" ".join(tokenized))
    print(functions)
    for line in functions: 
        outF.write( line + "\n")
    outF.close()