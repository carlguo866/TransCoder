from preprocessing.src.code_tokenizer import tokenize_cpp, extract_functions_cpp

if __name__ == '__main__':
    fn = open("../../data/test_dataset/cpp/test.cpp", 'r').read()
    #test tokenizer
    tokenized = tokenize_cpp(fn)
    print(tokenized)
    print(len(tokenized))
    #test detokenizer
    functions_standalone, functions_class = extract_functions_cpp(fn)
    for each in functions_standalone: 
        print(each)
        print("\n")
    print(functions_class)

