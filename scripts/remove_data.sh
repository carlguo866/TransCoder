#!/bin/bash
set -e
cd /home/carl/TransCoder/data/"$1"
pwd

find -iname "*tok" -delete
# find -iname "*functions_standalone*" -delete
find -iname "test*" -delete
find -iname "train*" -delete
find -iname "valid*" -delete
find -iname "all*" -delete
# # find -iname '*bpe*' 
find -iname '*bpe*' -delete
rm -rf cpp-llvm-
rm -rf cpp-llvm-.XLM-syml
