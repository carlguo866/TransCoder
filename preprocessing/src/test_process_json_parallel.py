from preprocessing.src.utils import process_and_tokenize_json_file_parallel

if __name__ == '__main__': 
    input1 = '/home/carl/TransCoder/data/codenet_new/cpp/cpp.101.json.gz'
    input2 = '/home/carl/TransCoder/data/codenet_new/llvm/llvm.101.json.gz'
    lang1 = 'cpp' 
    lang2 = 'llvm' 
    process_and_tokenize_json_file_parallel(input1, input2, lang1, lang2)