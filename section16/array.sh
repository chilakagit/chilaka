#!/bin/bash
<<mycom1
echo -n "Enter array values: "
read -a my_array
echo "the given array values is: ${my_array[@]}"
mycom1

my_array=( hi hello "how are you" )

for i in "${my_array[@]}"
do
	echo "${i}"
done


