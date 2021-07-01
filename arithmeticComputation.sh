#!/bin/bash -x
read -p "Enter 3 number : " a b c
declare -A compute
compute[1]=$((a+b*c))
compute[2]=$((a*b+c))
compute[3]=$((c+a/b))
compute[4]=$((a%b+c))
count=1
for ((i=0;i<4;i++))
do
	array[$i]=${compute[$((count++))]}
done
echo ${array[@]}
for ((j=0;j<4-1;j++))
do
	for ((k=j+1;k<4;k++))
	do
		if [ ${array[k]} -lt ${array[j]} ];then
			temp=${array[k]}
			array[$k]=${array[j]}
			array[$j]=$temp
		fi
	done
done
echo ${array[@]}


