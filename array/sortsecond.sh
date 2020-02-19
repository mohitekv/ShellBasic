#!/bin/bash
for ((i=0;i<10;i++))
 do
    arr[$i]=$((RANDOM%900+100))
 done
 for ((i=0;i<10;i++))
 do
    for ((j=$(($i + 1));j<10;j++))
    do
        if [[ ${arr[$i]} > ${arr[$j]} ]]
        then
            temp=${arr[$i]}
            arr[$i]=${arr[$j]}
            arr[$j]=$temp
        fi
    done
 done
 echo sorted array is: ${arr[@]}
 echo second highest number is ${arr[8]}
 echo second smallest number is ${arr[1]}