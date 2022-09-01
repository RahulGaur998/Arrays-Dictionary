#!/bin/bash -x

count=0

for (( i=1;i<100;i++ ))
do
	var=$i
	a=$(($var%10))
	var=$(($var/10))
	if [ $a -eq $var ]
	then
		array[count++]=$i
	fi
echo ${array[@]}
done
