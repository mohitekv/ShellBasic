#/bin/bas
read -p "enter date:" day
declare -a monthArry=("jan" "feb" "March" "April" "May" "June" "July" "August" "Sep" "October" "November" "December")
echo ${monthArry[@]}
if [ $day -le 31 ]
then
	read -p "Enter a valid month: " month
	if [ ${#month} -ge 3 ]
	then
           if [[ ${monthArry[2]} == *$month* ]]; then
                if [[ $day -le 20  ]]
                then 
                        echo Not in range
                else 
                    echo in range   
                fi
            elif [[ ${monthArry[3]} == *$month* ]]; then
                if [[ $day < 30 ]]
                then 
                        echo  in a range
                else    
                    echo April only have 30 days
                fi
            elif [[ ${monthArry[4]} == *$month* ]]; then
                echo Day is in range
            elif [[ ${monthArry[5]} == *$month* ]]; then
                if [[ $day < 30 ]]
                then 
                        if [[ $day < 21 ]]
                        then 
                            echo  day in a range
                        else    
                            echo day is out of range
                        fi
                else    
                    echo June only have 30 days
                fi
            else
                echo month is out of range
            fi 

    else
        echo month len is less than 3
    fi
else
	echo date is not valid
fi
