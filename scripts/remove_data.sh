#!/bin/bash
set -e
cd /home/carl/TransCoder/data/"$1"
pwd
find -iname "*tok" -delete
find -iname "*functions_standalone*" -delete
rm -rf cpp-llvm-
rm -rf cpp-llvm-.XLM-syml