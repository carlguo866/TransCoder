from preprocessing.src.code_tokenizer import detokenize_llvm, get_llvm_tokens_and_types, tokenize_llvm, infix_to_prefix, remove_globals
import pyllvm
import re
from time import time

def main():
    # s = '{ [ 4 x i8 ] , i32 , i8 , { i8 , i32 } , i64 }'
    # s = infix_to_prefix(s)
    # print(" ".join(s))
    # fn = open('/home/carl/TransCoder/temp.ll','r').read()
    fn = '@ptr = [3 x i32] [i32 1, i32 2, i32 3]'
    tokenized = tokenize_llvm(fn)
    print(" ".join(tokenized))
    # tokenized= tokenize_llvm(fn)
    # end = time()
    # print(f"time {end-start}")
    # # # print(tokenized)
    # print(f"len{len(tokenized)}")
    outF = open("tokenized-output.txt", "w")
    # comma_dict = dict()
    tokens = ' '.join(tokenized) 
    print(len(tokens))
    outF.write(' '.join(tokenized))
    # outF.write("\n".join(" ".join(tokenized).split("NEW_LINE")))
    # # outF.write(str(comma_dict_problems))
    # string  = ' '.join(tokenized)
    # detokenized = detokenize_llvm(string)
    # outF = open("detokenized-output.ll", "w")
    # outF.write(detokenized)
    outF.close()

    # detokenized = detokenized.split(" ")
    # tokenized, _ = get_llvm_tokens_and_types(fn)
    # #assert len(tokenized) == len(detokenized), f"{len(tokenized)} is different from {len(detokenized)}"
    # print(tokenized[60:65])
    # print(detokenized[60:65])
    # for i in range(len(tokenized)):
    #     assert(tokenized[i] == detokenized[i]), f"at {i}, {tokenized[i]} is different from {detokenized[i]}"

    
# import cProfile

if __name__ == '__main__':
    # cProfile.run("main()")
    main()