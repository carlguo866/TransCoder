#!/bin/bash
cd /home/carl/TransCoder/output/bt_sa_codenet/sb5liynv3m
for i in `ls periodic-*.pth`; do 
    NUMBER=$(echo $i | sed 's/[^0-9]*//g')
    echo $NUMBER
    if [[ $(($NUMBER % 5)) -eq 0 ]] ; then
        rm $i;
        # echo $NUMBER
    fi
 done
 