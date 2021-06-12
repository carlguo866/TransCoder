from preprocessing.src.code_tokenizer import tokenize_llvm, detokenize_llvm, get_llvm_tokens_and_types

if __name__ == '__main__':
    fn = open("/home/carl/TransCoder/test.ll", 'r').read()
    #test tokenizer
    tokenized = tokenize_llvm(fn)
    # print(tokenized)
    print(f"len{len(tokenized)}")
    outF = open("tokenized-output.txt", "w")
    for i in range(len(tokenized)):
        # write line to output file
        outF.write(str(tokenized[i])   )# + ' ' + str(types[i])
        outF.write("\n")
    outF.close()
    detokenized = detokenize_llvm(tokenized)
    #print(detokenized)
    outF = open("detokenized-output.txt", "w")
    outF.write(detokenized)
    outF.close()
    

