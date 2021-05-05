import json 
import sys
import gzip 

if __name__ == '__main__':
    with open(sys.argv[1], 'r') as input: 
        input = input.read()
        file_num = (int) (sys.argv[3]) - 1 
        x = {
            "repo_name": "csmith"+sys.argv[2],
            "path":f"placeholder/placeholder/input{file_num}.ll",
            "language": "llvm_ir",
            "content": input
        }
        y = json.dumps(x) 
        if(sys.argv[2]=="1"): 
            outF = gzip.open(f"data/test_dataset/llvm/llvm.00{file_num}.json.gz", "wt")
        else: 
            outF = gzip.open(f"data/test_dataset/llvm/llvm.00{file_num}.json.gz", "at")
        outF.write(y)
        outF.write("\n")
        outF.close