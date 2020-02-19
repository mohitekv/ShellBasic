#!/bin/bash
echo "enter 3 numbers"
read a
read b
read c
a1[0]=$((($a + $b) * $c))
a1[1]=$((($c % $b) + $c))
a1[2]=$((($c + $a) / $b))
a1[3]=$((($a + $b) + $c))
echo "Numbes are"
echo ${a1[@]}
echo "Maximum and minimum number:"
max=${a1[0]}
min=${a1[0]}

for i in "${a1[@]}"
do
	if [[ $i -gt $max ]]
	then
		max="$i"
	fi
	if [[ $i -le $min ]]
	then
		min="$i"	
	fi
done
echo "min no is $min"
echo "max no is $max"
for i in `seq 3`
do
	if [[ $i -le 9 ]]
	then
		echo g	
	fi
done