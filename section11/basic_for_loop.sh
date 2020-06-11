#!/bin/bash
#basic script for for loop
<<mycom1
for i in 1 2 3
do
 echo "This is a loop"
 echo "For this iteration the value is: $i"
done
mycom1

for i in $(ls)
do
	echo "Print the name"
	echo "For this iteration the value is: $i"
done
