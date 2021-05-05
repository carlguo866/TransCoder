#!/bin/bash
set -e
for i in $(seq 1 "$2"); do 
    for j in $(seq 1 "$1"); do
    csmith > input.c;
    clang -I${CSMITH_HOME}/runtime -w input.c -femit-all-decls -S -emit-llvm -o input.txt;
    python preprocessing/src/json_generator.py input.txt "$j" "$i"; 
done;
done