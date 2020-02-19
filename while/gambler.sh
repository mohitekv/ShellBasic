#!/bin/bash
goal=200
stack=100
bet=1
win=0
lose=0
while [ $stack -gt 0 -a $stack -lt $goal ]
do
    spin=$(($RANDOM%2))
    if [[ $spin == 0 ]]
    then
        echo you lose
        stack=$(($stack - $bet))
        lose=$(($lose + 1))
        flg=0
    else
        echo
        echo you win
        stack=$(($stack + $bet))
        win=$(($win + 1))
        flg=1
    fi
done
if [[ $flg == 1 ]]
    then
        echo Win by $win
    else
        echo Win by $lose
fi