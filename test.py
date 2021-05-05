import preprocessing.src.code_tokenizer
string = []
string.append(r"""
// This is a   comment
// ------- ******* -------
int main() {
std::cout << "Hello World!";
return 0;
}""")

if __name__ == '__main__': 
    print(tokenize_cpp(string)
