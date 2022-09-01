#Extend the Prime Factorization Program to store all the Prime Factors of a
#number n into an array and finally display the output.

#!/bin/bash -x

read -p "Give Input to find its Prime Factors : " num
number=$num
count=0

for (( i=2;i<=$num;i++ ))		#traverse all the number till $num
do
	while !(($num%$i))		#check current number if it gives remainder zero
	do
		array[count++]=$i	#if it does give mod 0 then add to array
		num=$(($num/$i))	#after adding to array divide the number by i to get other factors
	done
done

echo "Prime Factors for the number $number are : "
echo ${array[@]}			#print all the factors from the array
