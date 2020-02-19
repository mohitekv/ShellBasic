#!/bin/bash
declare -A arr
read -p "Enter Number to Compute Prime factors" num
j=0
for((i=2;i<=num;i++))
do
    for((;num%i==0;num=num/i))
    do
        arr[$j]=$i
        j=$(($j+1))

    done
done
echo ${arr[@]}
