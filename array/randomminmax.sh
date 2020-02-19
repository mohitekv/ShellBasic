#!/bin/bash
l=100
h=999
i=0
declare -A arr
in=$(($h-$l))
for i in `seq 5`
do 
	t=$(( $RANDOM % $in))
	n=$(( $t + $l))
	arr[$i]=$n
	#echo "n is"
	#echo $n
done 
echo ${arr[@]}

max=${arr[0]}
min=${arr[0]}
#echo $max
#m=999
#echo "hello"
#j=0
for j in `seq 5`
do
	#echo ${arr[$j]}
	#j=$(($j + 1))
	if [[ ${arr[$j]} -gt $max ]];
	then 
		max=${arr[$j]}
	
	elif [[ $j -lt $min ]];
	then 
		min=${arr[$j]}
	fi
	#((++j))
done

 
echo $min
echo $max
#echo $m
