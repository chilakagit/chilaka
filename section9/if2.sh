#!/bin/bash
<<mycom1
if [[ 4 -eq 4 ]]
then 
	echo "they are equal"
fi
mycom1
<<mycom2
if [[ ! 4 -eq 4 ]]
then
	echo "output equal"
else
	echo "output reversed"
fi
mycom2
if [[ 4 -gt 5 ]]; then
echo "This is not correct"
else
echo "The statement is wrong"
fi
