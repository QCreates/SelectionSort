#!/bin/bash

INPUT=./time.txt

declare -i x=12
declare -i z=10
declare -i y=10

for i in {329..454}; do notequal="(($i + 1) % 6)";
			if [[ ${notequal} -ne ${i} ]];then
			   line="$(sed -n ${i}p time.txt)"
			   num1=${line:0:1}
			   num2=${line:2:1}
			   x+=$num1
			   z+=$num2
			   if [[ $x -gt 60 ]]; then
			       x=0
			       y=11
			   fi
			   if [[ $z -gt 60 ]]; then
			     echo "10/4/2022 $y:$(($x+1))" >> temp.txt
			   else
			       echo "10/4/2022 $y:$(($x))" >> temp.txt
			   fi
			fi			
done
