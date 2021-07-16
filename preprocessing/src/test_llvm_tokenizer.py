from preprocessing.src.code_tokenizer import detokenize_llvm, get_llvm_tokens_and_types, tokenize_llvm
import pyllvm
import re

if __name__ == '__main__':
    fn = open("/home/carl/TransCoder/input_test.ll", 'r').read()
    #test tokenizer
    tokenized= tokenize_llvm(fn)
    # # print(tokenized)
    print(f"len{len(tokenized)}")
    outF = open("tokenized-output.txt", "w")
    comma_dict = dict()
    for i in range(len(tokenized)):
        # write line to output file
        outF.write(tokenized[i] ) # +  " " + str(toktypes[i]) + " "
        # if (tokenized[i] == ','): 
        #     if (toktypes[i-1], toktypes[i+1]) in comma_dict.keys(): 
        #         comma_dict[(toktypes[i-1], toktypes[i+1])]+=1 
        #     else: 
        #         comma_dict[(toktypes[i-1], toktypes[i+1])]=1
        outF.write("\n")
    # outF.write(str(comma_dict)+"\n")
    
    # outF.write(str(comma_dict_problems))
    outF.close()

    string  = ' '.join(tokenized)
    detokenized = detokenize_llvm(string)
    outF = open("detokenized-output.ll", "w")
    outF.write(detokenized)
    outF.close()

    detokenized = detokenized.split(" ")
    tokenized, _ = get_llvm_tokens_and_types(fn)
    #assert len(tokenized) == len(detokenized), f"{len(tokenized)} is different from {len(detokenized)}"
    print(tokenized[60:65])
    print(detokenized[60:65])
    for i in range(len(tokenized)):
        assert(tokenized[i] == detokenized[i]), f"at {i}, {tokenized[i]} is different from {detokenized[i]}"

    

