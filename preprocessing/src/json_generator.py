import json 
import sys

if __name__ == '__main__':
    with open(sys.argv[1], 'r') as input: 
        input = input.read()
        x = {
            "repo": "csmith"+sys.argv[2],
            "language": "llvm_ir",
            "content": input
        }
        y = json.dumps(x) 
        if(sys.argv[2]=="1"): 
            outF = open(f"../../data/test_dataset/llvm/llvm.00{sys.argv[3]}.json.gz", "w")
        else: 
            outF = open(f"../../data/test_dataset/llvm/llvm.00{sys.argv[3]}.json.gz", "a")
        outF.write(y)
        outF.write("\n")
        outF.close