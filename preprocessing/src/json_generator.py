import json 
import sys
import gzip 
from distutils import util
from pathlib import Path
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
        folder_name = Path(f"data/{folder_name}/")
        if not folder_name.is_dir(): 
            folder_name.mkdir()
        if not folder_name.joinpath(lang).is_dir():
            print(folder_name.joinpath(lang))
            folder_name.joinpath(lang).mkdir()
        
        if(sys.argv[2]=="1"): 
            outF = gzip.open(folder_name.joinpath(f"{lang}/{lang}.{'{0:03}'.format(file_num)}.json.gz"), "wt")
        else: 
            outF = gzip.open(folder_name.joinpath(f"{lang}/{lang}.{'{0:03}'.format(file_num)}.json.gz"), "at")
        outF.write(y)
        outF.write("\n")
        outF.close