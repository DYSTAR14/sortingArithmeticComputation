#!/bin/bash -x
read -p "Enter 3 number : " a b c
echo $a $b $c
declare -A compute
compute[1]=$((a+b*c))
compute[2]=$((a*b+c))
compute[3]=$((c+a/b))
compute[4]=$((a%b+c))
echo ${compute[@]}
count=1
for ((i=0;i<4;i++))
do
	array[$i]=${compute[$((count++))]}
done
echo ${array[@]}
