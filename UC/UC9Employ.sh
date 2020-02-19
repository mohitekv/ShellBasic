#!/bin/bash -x

declare -A Employee
daysinmonth=20
parttime=0
fulltime=1
perhour=20
read -p "enter maximum hr: " maxhr
read -p "enter maximum day: " maxday
totalhr=0
totalday=0
i=0
time=$(($RANDOM%2))
while [[ $totalhr -lt $maxhr && $totalday -lt $maxday ]]
do 
    time=$(($RANDOM%2))
    if [[ $time -eq $fulltime ]]
    then 
	    hours=8
        wagesFull[$i]=$(($hours * $perhour))
    else
	    hours=4
        wagespart[$i]=$(($hours * $perhour))
    fi
    totalhours=$(($totalhours + $hours))
    totalhr=$(($totalhr+1))
    totalday[]=$(($totalday+1))
    daywages[$i]=$(($hours * $perhour))
    
    i=$(($i+1))
done
totalsalary=$(($totalhours*$perhour*$totalday))
echo total salary is $totalsalary
Employee=([Fulltime]=${wagesFull[@]} [parttime]=${wagespart[@]} [daywages]=${})


