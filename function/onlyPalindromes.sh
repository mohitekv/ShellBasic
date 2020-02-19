#!/bin/bash -x
Palindromes()
{
num=$1
s=0 
rev=0
temp=$2
   
while [ $num -gt 0 ] 
do
    s=$(( $num % 10 ))  
    rev=$(( $rev * 10 + $s ))
    num=$(( $num / 10 ))   
done
echo $rev
if [ $temp -eq $rev ]; 
then
    echo "Number is palindrome"
    
else
    echo "Number is NOT palindrome"
fi

}

read -p "Enter a numbers: " num1 num2 
Palindromes $num1 $num2
