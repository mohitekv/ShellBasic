#!/bin/bash -x
convertFah()
{
 
	cs=$(echo "(($1 - 32) * 5) / 9" | bc -l)
	echo $cs cal
}

convertCel()
{
	fh=$(echo "((($1 * 9) / 5) + 32" | bc -l)
	echo $fh
}

read -p "Enter Temperature: " Temperature
echo Enter converstion type : cel or Fah
read strval

if [[ $strval == *c* ]];
then
  convertCel $Temperature
elif [[ $strval == *f* ]];
then
    convertFah $Temperature
fi
