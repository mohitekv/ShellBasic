read -p "Enter nuumber of day: " d0
if [[ $d0 -le 6 ]]
then
elif [[ $d0 == 0 ]]
then    
    echo sunday
elif [[ $d0 == 1 ]]
then    
    echo monday
elif [[ $d0 == 2 ]]
then    
    echo Tuesday
elif [[ $d0 == 3 ]]
then    
    echo Wednesday
elif [[ $d0 == 4 ]]
then    
    echo Thusday
elif [[ $d0 == 5 ]]
then    
    echo Friday
elif [[ $d0 == 6 ]]
then    
    echo sunday

else
    echo not a valid input
fi