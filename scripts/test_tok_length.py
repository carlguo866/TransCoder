from pathlib import Path
import sys
if __name__ == '__main__': 
    cpp_toks = sorted(Path(f'/home/carl/TransCoder/data/{sys.argv[1]}/cpp').glob("*tok"))
    llvm_toks = sorted(Path(f'/home/carl/TransCoder/data/{sys.argv[1]}/llvm').glob("*tok"))

    assert len(cpp_toks) == len(llvm_toks)
    for i in range(len(cpp_toks)): 
        cpp = len(list(open(cpp_toks[i],'r').readlines()))
        llvm = len(list(open(llvm_toks[i],'r').readlines()))
        if cpp!= llvm or cpp < 5000: 
            print(f"cpp_toks[i] {cpp_toks[i]} {cpp} llvm_toks[i] {llvm_toks[i]} {llvm} ")
