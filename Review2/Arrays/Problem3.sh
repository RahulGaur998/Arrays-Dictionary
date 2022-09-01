#!/bin/bash -x

read -p "Provide an input for Prime factorization : " number
num=$number
counter=0
function factorization()
{
	if [[ $num -eq 0 ]] || [[ $num -eq 1 ]]
	then
		echo ${array[@]}
		exit
	elif [[ $num -eq 3 ]] || [[ $num -eq 5 ]] || [[ $num -eq 7 ]]
	then
		echo ${array[@]}
		exit
	elif [[ $num%2 -eq 0 ]]
	then
		num=$(($num/2))
	elif [[ $num%3 -eq 0 ]]
	then
		num=$(($num/3))
	elif [[ $num%5 -eq 0 ]]
	then
		num=$(($num/5))
	elif [[ $num%7 -eq 0 ]]
	then
		num=$(($num/7))
	fi
}

while [ $num -ne 0 ] && [ $num -ne 1 ] && [ $num -ne 2 ]
do
	if ! (($num%2))
	then
		array[counter++]=2
		factorization $num
	elif ! (($num%3))
	then
		array[counter++]=3
		factorization $num
	elif !(($num%5))
	then
		array[counter++]=5
		factorization $num
	elif !(($num%7))
	then
		array[counter++]=7
		factorization $num
	else
		array[counter++]=$num
		echo ${array[@]}
		exit
	fi
done

if ! (($number%2)) || !(($number%3))
then
	echo ${array[@]}
fi
