#!/bin/bash -x
prime()
{
    num1=$1
i=2
flag=0
while [ $i -le $(($num1 / 2)) ]
do
if [[ $(($num1 % $i)) -eq 0 ]]
then
flag=1
fi

i=`expr $i + 1`
done 
if [[ $flag -eq 1 ]]
then
echo "The number $num1 is Not Prime"
else
echo "The number is Prime"
fi
}
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
    prime $temp
else
    echo "Number is NOT palindrome"
fi

}

read -p "Enter a numbers: " num1 num2 
Palindromes $num1 $num2
