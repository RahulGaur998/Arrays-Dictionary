#Take a range from 0 – 100, find the digits that are repeated twice like 33, 77,
#etc and store them in an array

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
done
echo "The numbers which are repeated twice like 33, 77... between 1-100 are : "
echo ${array[@]}
