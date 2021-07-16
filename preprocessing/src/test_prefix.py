from preprocessing.src.code_tokenizer import detokenize_llvm, get_llvm_tokens_and_types, tokenize_llvm, infix_to_prefix
import pyllvm
import re

if __name__ == "__main__": 
    string  = "[] {i32} { i32* 7, i32 -1, i32****** 5, i8 44, {}* , {[8 x i32], i32 }**** }"
    tokenized, types = tokenize_llvm(string) 
    print(" ".join(tokenized))