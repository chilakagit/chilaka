#!/bin/bash
<<mcom
for i in $(ls)
do
echo "$i file"
done
mcom
<<mcom2
cnt=1
for i in $(ls)
do
	if [[ $cnt -eq 1 ]]; then	
	echo "$i file"
	((cnt++))
	fi
done
mcom2
#if i use exit,the complete shellscript is stopped so we are using break instead

<<mcom3
for i in $(ls)
do
	echo "$i file"
	exit
done

echo "For loop is over"
mcom3
<<mcom4
for i in $(ls)
do
	echo "$i File"
	break
done
echo "For loop over and continuing to below code if any for executioin"
mcom4
cnt=1
for i in $(ls)
do
	if [[ $cnt -eq 1 ]]
	then
		echo "$i File"
	break
	fi
done






