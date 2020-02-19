#!/bin/bash -x
j=0 
s=0 
for ((i=1;i<100;i++))
do    
    temp=$num
    s=$(( $i % 10 ))   
    temp=$(( $i / 10 ))   
    if [[ $s -eq $temp ]] 
    then
        arr[$j]=$i
        j=$(($j + 1))
    fi
done
echo ${arr[@]}

