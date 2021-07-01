#!/bin/bash -x
read -p "Enter 3 number : " a b c
echo $a $b $c
compute1=$((a+b*c))
compute2=$((a*b+c))
compute3=$((c+a/b))
echo $compute1
echo $compute2
echo $compute3
