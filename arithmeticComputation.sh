#!/bin/bash -x
read -p "Enter 3 number : " a b c
echo $a $b $c
compute1=$((a+b*c))
compute2=$((a*b+c))
echo $compute1
echo $compute2
