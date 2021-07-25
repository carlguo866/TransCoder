from preprocessing.src.code_tokenizer import detokenize_llvm, get_llvm_tokens_and_types, tokenize_llvm
import pyllvm
import re
from time import time

def main():
    fn = open("/home/carl/TransCoder/input.ll", 'r').read()
    #fn = open("/home/carl/TransCoder/input_test.ll", 'r').read()
    #test tokenizer
    start = time()
    tokenized= tokenize_llvm(fn)
    end = time()
    print(f"time {end-start}")
    # # print(tokenized)
    print(f"len{len(tokenized)}")
    outF = open("tokenized-output.txt", "w")
    comma_dict = dict()
    outF.write("\n".join(" ".join(tokenized).split("NEW_LINE")) )
    # outF.write(str(comma_dict_problems))
    outF.close()
    string  = ' '.join(tokenized)
    detokenized = detokenize_llvm(string)
    outF = open("detokenized-output.ll", "w")
    outF.write(detokenized)
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