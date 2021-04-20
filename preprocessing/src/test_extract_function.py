from preprocessing.src.code_tokenizer import tokenize_cpp, extract_functions_cpp

if __name__ == '__main__':
    fn = open("../../data/test_dataset/cpp/test.cpp", 'r').read()
    #test tokenizer
    tokenized = tokenize_cpp(fn)
    print(tokenized)
    print(len(tokenized))
    #test detokenizer
    functions_standalone, functions_class = extract_functions_cpp(tokenized)
    print(functions_standalone)
    print(functions_class)

