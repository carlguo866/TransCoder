#!/bin/bash
cd /home/carl/TransCoder/aws/output/bt_sa/rd1ctjncjj
for i in `ls periodic-*.pth`; do 
    NUMBER=$(echo $i | sed 's/[^0-9]*//g')
    echo $NUMBER
    if [[ $(($NUMBER % 3)) -eq 0 ]] ; then
        rm $i;
        # echo $NUMBER
    fi
 done
 