from preprocessing.src.code_tokenizer import tokenize_llvm, detokenize_llvm

if __name__ == '__main__':
    fn = open("../../data/test_dataset/llvm/O3.txt", 'r').read()
    #test tokenizer
    tokenized = tokenize_llvm(fn)
    print(tokenized)
    print(len(tokenized))
    #test detokenizer
    detokenized = detokenize_llvm(tokenized)
    print(detokenized)

