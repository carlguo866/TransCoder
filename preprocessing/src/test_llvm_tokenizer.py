from preprocessing.src.code_tokenizer import detokenize_llvm, get_llvm_tokens_and_types, tokenize_llvm
import pyllvm
import re

if __name__ == '__main__':
    fn = open("/home/carl/TransCoder/detokenized-output.ll", 'r').read()
    #test tokenizer
    tokenized = tokenize_llvm(fn)
    # # print(tokenized)
    print(f"len{len(tokenized)}")
    outF = open("tokenized-output.txt", "w")
    for i in range(len(tokenized)):
        # write line to output file
        outF.write(tokenized[i] ) #+ " " + str(types[i]) + " "
        outF.write("\n")
    outF.close()
    # tokens, types = get_llvm_tokens_and_types(fn)
    # for i in range(len(tokens)): 
    #     if tokens[i][:6] == "@\".str": 
    #          tokens[i] = "@" + tokens[i][2:tokens[i].index(':')]


    # # detokenized = detokenize_llvm(fn)

    # #print(detokenized)
    # outF = open("detokenized-output.ll", "w")
    # outF.write(" ".join(tokens))
    # outF.close()

    

