#!/bin/bash
#loop script
#[[ -x loop.sh ]] && echo "This File is executable" || echo "File is not having execution permission"
<<mycom2
if [[ -x $1 ]]
then
echo "This File is executable"
else
echo "File is not having execution permission"
fi
mycom2
<<mycom1
if [[ -x variable.sh ]]; then 
	echo "This File is executable"
else
	echo "File is not having execution permission"
fi
mycom1
<<mycom3
#for each in loop.sh loop1.sh
for each in $(ls)
do

if [[ -x $each ]]; then

	echo "$each have executable permission"
else
	echo "$each File don't have executable permission"

fi
done
mycom3

if [[ $# -ne 1 ]]
then
   echo "usage of this script is $0 anypath"
   exit
fi

path=$1
for each in $(ls $1)
do
if [[ -x $each ]]; then
	echo "$each have executable permission"
else
	echo "$each File don't have executable permis    sion"
fi
done

