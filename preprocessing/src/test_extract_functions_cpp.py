from preprocessing.src.code_tokenizer import extract_functions_cpp, get_function_name_cpp, extract_arguments_cpp

if __name__ == '__main__':
    fn = open("/home/carl/TransCoder/data/test_dataset/cpp/train.0.tok", 'r').read()
    functions, classes = extract_functions_cpp(fn)
    outF = open("functions-output.txt", "w")
    print(functions[0])
    print(type(functions[0]))
    for line in functions:
       # write line to output file
        outF.write( get_function_name_cpp(line))
        outF.write("\n")
        args, types= extract_arguments_cpp(line)
        outF.write(" , ".join(args))
        outF.write("\n")
        outF.write(" , ".join(types))
        outF.write("\n")
        outF.write(line)
        outF.write("\n\n")
    outF.close()

