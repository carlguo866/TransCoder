from preprocessing.src.code_tokenizer import tokenize_llvm, extract_functions_llvm, get_function_name_llvm, extract_arguments_llvm

if __name__ == '__main__':
    fn = open("../../data/test_dataset/llvm/llvm2.txt", 'r').read()
    #test tokenizer
    tokenized = tokenize_llvm(fn)
    #print(tokenized)
    functions, classes = extract_functions_llvm(tokenized)
    outF = open("functions-output.txt", "w")
    print(functions[0])
    for line in functions:
        # write line to output file
        outF.write( get_function_name_llvm(line))
        outF.write("\n")
        args, types= extract_arguments_llvm(line)
        outF.write(" , ".join(args))
        outF.write("\n")
        outF.write(" , ".join(types))
        outF.write("\n")
        outF.write(line)
        outF.write("\n\n")
    outF.close()

