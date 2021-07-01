#!/bin/bash -x
read -p "Enter 3 number : " a b c
echo $a $b $c
compute[1]=$((a+b*c))
compute[2]=$((a*b+c))
compute[3]=$((c+a/b))
compute[4]=$((a%b+c))
echo ${compute[@]}

