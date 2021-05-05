#!/bin/bash
set -e
for i in $(seq 1 "$2"); do 
    for j in $(seq 1 "$1"); do
    csmith > input.txt;
    python json_generator.py input.txt "$j" "$i"; 
done;
done