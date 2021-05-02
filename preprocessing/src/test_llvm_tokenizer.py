from preprocessing.src.code_tokenizer import tokenize_llvm, detokenize_llvm

if __name__ == '__main__':
    fn = open("../../data/test_dataset/llvm/llvm2.txt", 'r').read()
    #test tokenizer
    fn += '\0'
    tokenized = tokenize_llvm(fn)
    # print(tokenized)
    print(f"len{len(tokenized)}")
    outF = open("tokenized-output.txt", "w")
    for line in tokenized:
        # write line to output file
        outF.write(line)
        outF.write("\n")
    outF.close()
    detokenized = detokenize_llvm(tokenized)
    #print(detokenized)
    outF = open("detokenized-output.txt", "w")
    outF.write(detokenized)
    outF.close()
    

