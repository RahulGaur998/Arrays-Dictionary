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

echo ${DIE[@]}

if [ ${DIE[1]} -gt ${DIE[2]} ] && [ ${DIE[1]} -gt ${DIE[3]} ] && [ ${DIE[1]} -gt ${DIE[4]} ] && [ ${DIE[1]} -gt ${DIE[5]} ] && [ ${DIE[1]} -gt ${DIE[6]} ]
then
	echo "${DIE[1]} is MAX!"
elif [ ${DIE[2]} -gt ${DIE[3]} ] && [ ${DIE[2]} -gt ${DIE[4]} ] && [ ${DIE[2]} -gt ${DIE[5]} ] && [ ${DIE[2]} -gt ${DIE[6]} ]
then
	echo "${DIE[2]} is MAX!"
elif [ ${DIE[3]} -gt ${DIE[4]} ] && [ ${DIE[3]} -gt ${DIE[5]} ] && [ ${DIE[3]} -gt ${DIE[6]} ]
then
	echo "${DIE[3]} is MAX!"
elif [ ${DIE[4]} -gt ${DIE[5]} ] && [ ${DIE[4]} -gt ${DIE[6]} ]
then
	echo "${DIE[4]} is MAX!"
elif [ ${DIE[5]} -gt ${DIE[6]} ]
then
	echo "${DIE[5]} is MAX!"
else
	echo "${DIE[6]} is MAX!"
fi

if [ ${DIE[1]} -lt ${DIE[2]} ] && [ ${DIE[1]} -lt ${DIE[3]} ] && [ ${DIE[1]} -lt ${DIE[4]} ] && [ ${DIE[1]} -lt ${DIE[5]} ] && [ ${DIE[1]} -lt ${DIE[6]} ]
then
        echo "${DIE[1]} is MIN!"
elif [ ${DIE[2]} -lt ${DIE[3]} ] && [ ${DIE[2]} -lt ${DIE[4]} ] && [ ${DIE[2]} -lt ${DIE[5]} ] && [ ${DIE[2]} -lt ${DIE[6]} ]
then
        echo "${DIE[2]} is MIN!"
elif [ ${DIE[3]} -lt ${DIE[4]} ] && [ ${DIE[3]} -lt ${DIE[5]} ] && [ ${DIE[3]} -lt ${DIE[6]} ]
then
        echo "${DIE[3]} is MIN!"
elif [ ${DIE[4]} -lt ${DIE[5]} ] && [ ${DIE[4]} -lt ${DIE[6]} ]
then
        echo "${DIE[4]} is MIN!"
elif [ ${DIE[5]} -lt ${DIE[6]} ]
then
        echo "${DIE[5]} is MIN!"
else
        echo "${DIE[6]} is MIN!"
fi

