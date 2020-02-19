#!/bin/bash
 for ((i=0;i<10;i++))
 do
    arr[$i]=$((RANDOM%900+100))
 done
 echo ${arr[@]}
 max=${arr[0]}
 smax=${arr[0]}
 min=${arr[0]}
 smin=${arr[0]}

 for ((i=0;i<10;i++))
 do
    if [[ $max < ${arr[$i]} ]]
    then
        smax=$max
       max=${arr[$i]}
       
    elif [[ $smax < ${arr[$i]} ]]
    then
        smax=${arr[$i]}
    elif [[ $min > ${arr[$i]} ]]
    then
        smin=$min
        min=${arr[$i]}
    elif [[ $smin > ${arr[$i]} ]]
    then
        smin=${arr[$i]}
    fi
 done
 echo Second maximum nuber is: $smax
 echo Second minimum number is: $smin