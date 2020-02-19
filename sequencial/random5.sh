#!/bin/bash 
result=0
for ((i=0;i<5;i++))
do
    num=$(( $RANDOM % 6 +1 ))
    result=$(($num + $result))
done
echo sum of 5 random numbers are: $result
echo average of 5 random numbers are $(($result/5))