#!/bin/bash
<<mycom1
while IFS="," read f1 f2 f3 f4
do
	echo "$f4"

done < server.txt
mycom1
<<mycom2
#NR==1 means print first line NR!=1 means don't print first line
cat server.txt | awk 'NR!=1 {print}' | while IFS="," read f1 f2 f3 f4
do
	echo "$f1 $f2"
done
mycom2
<<mycom3
#if iam taking only f1 f2 and while loop considers f1 as first column and remaining lines are considered as f2
cat server.txt | awk 'NR!=1 {print}' | while IFS="," read f1     f2
do
	echo "$f2"
done
mycom3
#resetting the IFS

OLD_IFS=$IFS

cat server.txt | awk 'NR!=1 {print}' | while IFS="," read f1         f2
do
        echo "$f2"
done

IFS=$OLD_IFS









