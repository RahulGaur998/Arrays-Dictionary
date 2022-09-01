#!/bin/bash -x

read -p "Give Input" num
count=0

for (( i=2;i<=$num;i++ ))		#traverse all the number till $num
do
	while !(($num%$i))		#check current number if it gives remainder zero
	do
		array[count++]=$i	#if it does give mod 0 then add to array
		num=$(($num/$i))	#after adding to array divide the number by i to get other factors
	done
done
echo ${array[@]}			#print all the factors from the array
