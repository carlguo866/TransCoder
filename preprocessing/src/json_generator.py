import json 
import sys
import gzip 
from distutils import util

if __name__ == '__main__':
    with open(sys.argv[1], 'r') as input: 
        input = input.read()
        isC = util.strtobool(sys.argv[4])
        lang = "cpp" if isC else "llvm"
        suffix = "c" if isC else "ll" 
        file_num = (int) (sys.argv[3]) - 1 
        folder_name = sys.argv[5]
        x = {
            "repo_name": "csmith"+sys.argv[2],
            "path":f"placeholder/placeholder/input{file_num}.{suffix}",
            "language": "{lang}",
            "content": input
        }
        y = json.dumps(x) 
        if(sys.argv[2]=="1"): 
            outF = gzip.open(f"data/{folder_name}/{lang}/{lang}.00{file_num}.json.gz", "wt")
        else: 
            outF = gzip.open(f"data/{folder_name}/{lang}/{lang}.00{file_num}.json.gz", "at")
        outF.write(y)
        outF.write("\n")
        outF.close