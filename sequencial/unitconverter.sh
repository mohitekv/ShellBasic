#!/bin/bash 
ft=12
ftCon=$((ft*42))
echo 42in = $ftCon ft
w=60
l=40
area=$(($w*$l))
echo area of 60 *40 feet plot is : $area
echo area of 25 such plots are $((25*$area))