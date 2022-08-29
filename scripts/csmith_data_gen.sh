#!/bin/bash
set -e
for i in $(seq 1 "$2"); do 
    for j in $(seq 1 "$1"); do
    csmith > input.c;
    python /home/carl/TransCoder/scripts/csmith_wrapper.py input.c
    python /home/carl/TransCoder/preprocessing/src/json_generator.py input.c "$j" "$i" 1 csmith; 
    clang -I${CSMITH_HOME}/runtime -w input.c -femit-all-decls -S -emit-llvm -o input.txt;
    python /home/carl/TransCoder/preprocessing/src/json_generator.py input.txt "$j" "$i" 0 csmith; 
done;
done