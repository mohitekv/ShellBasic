#!/bin/bash -x
read -p "Enter a digit: " num
num2=10
if [[ $num -lt 10 ]]
then
     echo $num
    if [[ $num == 0 ]]
    then
        echo Zero
    elif [[ $num == 1 ]]
     then
        echo One
    elif [[ $num == 2 ]]
    then
       
        echo tWO
    elif [[ $num == 3 ]]
    then
        echo Three
    elif [[ $num == 4 ]]
    then
        echo four
    elif [[ $num == 5 ]]
    then
        echo Five
    elif [[ $num == 6 ]]
    then
        echo Six
    elif [[ $num == 7 ]]
    then
        echo Seven
    elif [[ $num == 8 ]]
    then
        echo Eight
    elif [[ $num == 9 ]]
    then
        echo nINE
    fi
else
    echo digit is not single digit
fi



