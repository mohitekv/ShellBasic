#!/bin/bash
echo "Enter month"
read m
echo "Enter year"
read y
echo "Eter date"
read d
y0=$(($y - (14 - $m) / 12))
echo $y0
x=$(($y0 + ($y0 / 4) - ($y0 / 100) + ($y0 / 400)))
#echo $x
m0=$(($m +12 * ((14 - $m) / 12 - 2)))
#echo $m0
d0=$((((($d + $x + (31 * $m0)) / 12) % 7)))
echo $d0

if [ $d0 -eq 1 ]
then 
	echo "day is monday"
elif [ $d0 -eq 2 ]
then 
	echo "day is tuesday"

elif [ $d0 -eq 3 ]
then
	echo "day is wednesday"

elif [ $d0 -eq 4 ]
then 
	echo "day is thusday"

elif [ $d0 -eq 5 ]
then 
	echo "day is friday"

elif [ $d0 -eq 6 ]
then
	echo "day is saturday"

else [ $d0 -eq 7 ]
	echo "day is sunday"
fi
