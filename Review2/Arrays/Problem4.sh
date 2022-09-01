#Write a Program to show Sum of three Integer adds to ZERO

#!/bin/bash -x

sum=0
counter=0
count=0
echo "Enter 5 values to enter to array : "
for (( i=0;i<5;i++ ))
do
	read -p "Input $i : " val
	array[count++]=$val
done

for (( i=0;i<5;i++ ))
do
	for (( j=$i+1;j<5;j++ ))
	do
		for (( k=$j+1;k<5;k++ ))
		do
			val=$((${array[$i]}+${array[$j]}+${array[$k]}))
			if [ $val -eq 0 ]
			then
				array1[counter++]=${array[$i]}
				array1[counter++]=${array[$j]}
				array1[counter++]=${array[$k]}
			fi
		done
	done
done

echo "The numbers which add up to 0 are : "
echo ${array1[@]}
