from preprocessing.src.code_tokenizer import tokenize_llvm, detokenize_llvm, get_llvm_tokens_and_types

if __name__ == '__main__':
    fn = open("../../data/test_dataset/llvm/O3.txt", 'r').read()
    #test tokenizer
    fn += '\0'
    tokenized = tokenize_llvm(fn)
    print(tokenized)
    print(f"len{len(tokenized)}")
    # # test detokenizer
    #detokenized = detokenize_llvm(fn)
    # print(detokenized)

