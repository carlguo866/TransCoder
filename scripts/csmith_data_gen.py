import csv 
import os 
import subprocess 
import time 
import tqdm
from pathlib import Path, PurePath
import gzip
from multiprocessing import Pool, cpu_count
import random 
import string 
import shutil


total = 2000 
folder = Path('/home/carl/TransCoder/tmp')
def compile(i): 
    for j in range(total): 
        letters = string.ascii_lowercase
        placeholder = folder.joinpath(''.join(random.choice(letters) for i in range(10)))
        if not placeholder.is_dir(): 
            placeholder.mkdir() 
        else: 
            print('repeats!!', flush=True)
       
        c_path = placeholder.joinpath('input.c')
        ir_path = placeholder.joinpath('input.ll')
        with open(c_path,'w') as writer:  
            subprocess.run(f"csmith > {c_path}", shell=True, 
                            stdout=subprocess.PIPE, stderr=subprocess.PIPE, executable='/bin/bash')
        subprocess.run(f"python /home/carl/TransCoder/scripts/csmith_wrapper.py {c_path}", shell=True, 
                            stdout=subprocess.PIPE, stderr=subprocess.PIPE, executable='/bin/bash')
        subprocess.run(f"python /home/carl/TransCoder/preprocessing/src/json_generator.py {c_path} {j} {i} 1 csmith2 {PurePath(placeholder).name}", shell=True, 
                            stdout=subprocess.PIPE, stderr=subprocess.PIPE, executable='/bin/bash')
        subprocess.run(f"clang -I/home/carl/csmith/runtime -w {c_path} -femit-all-decls -S -emit-llvm -o {ir_path}", shell=True, 
                            stdout=subprocess.PIPE, stderr=subprocess.PIPE, executable='/bin/bash')
        subprocess.run(f"python /home/carl/TransCoder/preprocessing/src/json_generator.py {ir_path} {j} {i} 0 csmith2 {PurePath(placeholder).name}", shell=True, 
                            stdout=subprocess.PIPE, stderr=subprocess.PIPE, executable='/bin/bash')
        shutil.rmtree(placeholder)
        assert not placeholder.is_dir()
    return 

if __name__ == '__main__':
    if not folder.is_dir(): 
        folder.mkdir()
    with Pool(processes=30) as pool:
        results = pool.map(compile, range(30))



#!/bin/bash
# set -e
# for i in $(seq 1 "$2"); do 
#     for j in $(seq 1 "$1"); do
#     csmith > input.c;
#     python /home/carl/TransCoder/scripts/csmith_wrapper.py input.c
#     python /home/carl/TransCoder/preprocessing/src/json_generator.py input.c "$j" "$i" 1 csmith; 
#     clang -I/home/carl/csmith/runtime -w input.c -femit-all-decls -S -emit-llvm -o input.txt;
#     python /home/carl/TransCoder/preprocessing/src/json_generator.py input.txt "$j" "$i" 0 csmith; 
# done;
# done