#!/bin/bash
set -e
cd /home/carl/TransCoder/data/proper_eval3
rm -rf cpp-llvm-
rm -rf cpp-llvm-.XLM-syml
find -iname *tok -delete
find -iname *functions_standalone* -delete
