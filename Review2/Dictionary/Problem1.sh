#1. Write a program in the following steps
#a. Roll a die and find the number between 1 to 6
#b. Repeat the Die roll and find the result each time
#c. Store the result in a dictionary
#d. Repeat till any one of the number has reached 10 times
#e. Find the number that reached maximum times and the one that was for minimum times

#!/bin/bash -x

declare -A DIE
	DIE[1]=0
	DIE[2]=0
	DIE[3]=0
	DIE[4]=0
	DIE[5]=0
	DIE[6]=0

while [ ${DIE[1]} -ne 10 ] && [ ${DIE[2]} -ne 10 ] && [ ${DIE[3]} -ne 10 ] && [ ${DIE[4]} -ne 10 ] && [ ${DIE[5]} -ne 10 ] && [ ${DIE[6]} -ne 10 ]
do
	randomDie=$((RANDOM%6+1))
	case $randomDie in
			1 )
			DIE[1]=$((${DIE[1]}+1))
			;;
			2 )
			DIE[2]=$((${DIE[2]}+1))
			;;
			3 )
			DIE[3]=$((${DIE[3]}+1))
			;;
			4 )
			DIE[4]=$((${DIE[4]}+1))
			;;
			5 )
			DIE[5]=$((${DIE[5]}+1))
			;;
			6 )
			DIE[6]=$((${DIE[6]}+1))
			;;
			*)
			echo "WRONG"
			;;
	esac
done

total=$((${DIE[1]}+${DIE[2]}+${DIE[3]}+${DIE[4]}+${DIE[5]}+${DIE[6]}))
echo "After rolling the die for $total times the result is : "

echo ${DIE[@]}

echo "-------"

if [ ${DIE[1]} -gt ${DIE[2]} ] && [ ${DIE[1]} -gt ${DIE[3]} ] && [ ${DIE[1]} -gt ${DIE[4]} ] && [ ${DIE[1]} -gt ${DIE[5]} ] && [ ${DIE[1]} -gt ${DIE[6]} ]
then
	echo "1 is MAX ${DIE[1]} rolls!"
elif [ ${DIE[2]} -gt ${DIE[3]} ] && [ ${DIE[2]} -gt ${DIE[4]} ] && [ ${DIE[2]} -gt ${DIE[5]} ] && [ ${DIE[2]} -gt ${DIE[6]} ]
then
        echo "2 is MAX ${DIE[2]} rolls!"
elif [ ${DIE[3]} -gt ${DIE[4]} ] && [ ${DIE[3]} -gt ${DIE[5]} ] && [ ${DIE[3]} -gt ${DIE[6]} ]
then
        echo "3 is MAX ${DIE[3]} rolls!"
elif [ ${DIE[4]} -gt ${DIE[5]} ] && [ ${DIE[4]} -gt ${DIE[6]} ]
then
        echo "4 is MAX ${DIE[4]} rolls!"
elif [ ${DIE[5]} -gt ${DIE[6]} ]
then
        echo "5 is MAX ${DIE[5]} rolls!"
else
        echo "6 is MAX ${DIE[6]} rolls!"
fi

if [ ${DIE[1]} -lt ${DIE[2]} ] && [ ${DIE[1]} -lt ${DIE[3]} ] && [ ${DIE[1]} -lt ${DIE[4]} ] && [ ${DIE[1]} -lt ${DIE[5]} ] && [ ${DIE[1]} -lt ${DIE[6]} ]
then
        echo "1 is MIN ${DIE[1]} rolls!"
elif [ ${DIE[2]} -lt ${DIE[3]} ] && [ ${DIE[2]} -lt ${DIE[4]} ] && [ ${DIE[2]} -lt ${DIE[5]} ] && [ ${DIE[2]} -lt ${DIE[6]} ]
then
        echo "2 is MIN ${DIE[2]} rolls!"
elif [ ${DIE[3]} -lt ${DIE[4]} ] && [ ${DIE[3]} -lt ${DIE[5]} ] && [ ${DIE[3]} -lt ${DIE[6]} ]
then
        echo "3 is MIN ${DIE[3]} rolls!"
elif [ ${DIE[4]} -lt ${DIE[5]} ] && [ ${DIE[4]} -lt ${DIE[6]} ]
then
        echo "4 is MIN ${DIE[4]} rolls!"
elif [ ${DIE[5]} -lt ${DIE[6]} ]
then
        echo "5 is MIN ${DIE[5]} rolls!"
else
        echo "6 is MIN ${DIE[6]} rolls!"
fi

