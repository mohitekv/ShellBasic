#!/bin/bash
i=0
t=0
h=0
while [ $i -ge 0 ]
do
    coin=$(($RANDOM%2))
    if [[ $coin == 0 ]]
    then
        echo tail $t
        t=$(($t +1))
        if [[ $t -ge 11 ]]
        then
            echo tail wins with $t 
            break
        fi   

    else
    echo head $h
     h=$(($h +1))
        if [[ $h -ge 11 ]]
        then
            echo head wins with $h
            break
        fi   
    fi

done