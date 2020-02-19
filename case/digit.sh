read -p "Enter a digit: " num
if [[ $((num%10)) -eq 0 ]]
then
    case "$num" in
    "1") echo unit
     ;;
    "10") echo Ten
     ;;
    "100") echo Hundred
     ;;
    "1000") echo Thousand
    ;;
    "10000") echo Ten Thousand
     ;;    
    esac
else
    echo Invalid input
fi