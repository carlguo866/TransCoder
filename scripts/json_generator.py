import json 
import sys
import gzip 
from distutils import util
from pathlib import Path
if __name__ == '__main__':
    file_name = sys.argv[1]
    is_first = sys.argv[2]
    file_num = (int) (sys.argv[3])
    isC = util.strtobool(sys.argv[4])
    folder_name = Path(f"/home/carl/TransCoder/data/{sys.argv[5]}/")
    with open(file_name, 'r') as input: 
        input = input.read()
        lang = "cpp" if isC else "llvm"
        suffix = "c" if isC else "ll" 
        
        
        x = {
            "repo_name": f"anghabench{file_num}",
            "path": file_name,  
            "language": lang,
            "content": input
        }
        y = json.dumps(x) 
        
        json_file_name = folder_name.joinpath(f"{lang}/{lang}.{'{:03d}'.format(file_num)}.json.gz")
        # if not json_file_name.is_dir():
        #     print("alksndfandkaln klfand")
        #     outF = gzip.open(json_file_name, "wt")
        # else: 
        outF = gzip.open(json_file_name, "a")
        outF.write((y+'\n').encode())
        # outF.write()
        outF.close()