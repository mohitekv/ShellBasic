#!/bin/bash

declare -A month
i=0
while [ $i -le 50 ] 
do
	mon=$((RANDOM%12+1))
	case $mon in
	1)
		jan[$i]=$i 
		;;
	2)
		feb[$i]=$i 
		;;
	3)
		mar[$i]=$i 
		;;
	4)
		apr[$i]=$i 
		;;
	5)
		may[$i]=$i 
		;;
	6)
		june[$i]=$i 
		;;
	7)
		july[$i]=$i 
		;;
	8)
		aug[$i]=$i 
		;;
	9)
		sep[$i]=$i 
		;;
	10)
		oct[$i]=$i 
		;;
	11)
		nov[$i]=$i 
		;;
	12) 
		dec[$i]=$i 
		;;
	*)
		echo out of bound
esac
i=$(($i + 1))
done
 
month=([jan]=${jan[@]} [feb]=${feb[@]} [march]=${mar[@]} [april]=${apr[@]} [may]=${may[@]} [june]=${june[@]} [july]=${july[@]} [August]=${aug[@]} [september]=${sep[@]} [october]=${oct[@]} [November]=${nov[@]} [December]=${dec[@]})
echo dictionary is: ${!month[@]}
echo persons whos jan is: ${month[jan]}
echo persons whos feb is: ${month[feb]}
echo persons whos march is: ${month[march]}
echo persons whos april is: ${month[april]}
echo persons whos may is: ${month[may]}
echo persons whos june is: ${month[june]}
echo persons whos july is: ${month[july]}
echo persons whos August is: ${month[August]}
echo persons whos september is: ${month[september]}
echo persons whos october is: ${month[october]}
echo persons whos November is: ${month[November]}
echo persons whos December is: ${month[December]}