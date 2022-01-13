#!/bin/bash
set -e
cd /home/carl/TransCoder/data/"$1"
pwd
#rm *.bpe*
find -iname "*tok" -delete
find -iname "*functions_standalone*" -delete
# find -iname "test*" -delete
# find -iname "train*" -delete
# find -iname "valid*" -delete
# find -iname "all*" -delete
rm -rf cpp-llvm-
rm -rf cpp-llvm-.XLM-syml
