#!/bin/bash
echo "Starting for loop"

<<mycom1
for i in $(seq 1 10)
do
	if [[ $i -gt 5 ]]
	then
		break
	fi
echo "$i"
done
echo "For Loop is over"
mycom1
<<mycom2
for i in $(seq 1 10)
do
	if [[ $i -ne 5 ]]
	then
		echo $i
	fi
done
echo "for loop is over"
mycom2
<<mycom3
for i in $(seq 1 10)
do
	if [[ $i -eq 5 ]]
	then
		continue
	fi
echo "$i"
done
mycom3

for i in $(seq 1 10)
do
	if [[ $i -eq 5 ]]
	then
		continue
	fi
echo $i
done
