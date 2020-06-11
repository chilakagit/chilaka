#!/bin/bash
#This script is about infinity loop
echo "this script will tell about infinity loop"
cnt=1
for ((;;))
do
 echo "This is infinity loop"
# ((cnt++))
 sleep 1
if [[ $cnt -eq 10 ]]
then
	break
fi
((cnt++))
done

echo "out of loop"
