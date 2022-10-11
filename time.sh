#!/bin/bash

INPUT=~/Projects/AlphabetSorter/SelectionSort

#
#
#DATE AND TIME
#
for i in {1..105}; do currentDate=`date`;
	 echo $currentDate >> time.txt
done

echo " " >> time.txt
#
#
#Command Executed
#
#
find $INPUT -type f -name "*.txt" | while IFS= read -r filename; do
    for i in {1..5}; do command="time cat ${filename:61} | ./main.sh > /dev/null";
	     echo $command >> time.txt	
    done
done

echo " " >> time.txt
#
#
#File Name
#
#
find $INPUT -type f -name "*.txt" | while IFS= read -r filename; do
    for i in {1..5}; do file="${filename:61}";
	     echo $file >> time.txt	
    done
done

echo " " >> time.txt
#
#
#Execution Time
#
#
find $INPUT -type f -name "*.txt" | while IFS= read -r filename; do
    echo ${filename:61} >> time.txt
    for i in {1..5}; do mytime="$(~time ( cat ${filename:61} | ./main.sh ) 2>&1 >/dev/null )";
		        echo ${mytime:5:8} >> time.txt
    done
done
