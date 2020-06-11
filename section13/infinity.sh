#!/bin/bash
#This script will tell about the infinity loop
<<mycom1
while true
do
	echo "ok"
	sleep 1
done
mycom1
<<mycom2
for ((;;))
do
	echo "Hi"
	sleep 1
done
mycom2
<<mycom3
while :
do
	echo "ok"
	sleep 1
done
mycom3
<<mycom4

while date
do
	echo "date command $date"
done
mycom4
<<mycom5
while [[ 4 -gt 1 ]]
do
	echo "true"
done
mycom5
<<mycom6
start=1
while [[ $start -le 10 ]]
do
	echo "Print $start"
	((start++ ))
done
mycom6
<<mycom7
while read line
do
  echo "$line"
done<server.txt
mycom7
<<mycom8
cat server.txt | while read line
do
	echo "$line"
done
mycom8

ls -ltr | while read line
do
	echo "$line"
	echo "------"
done



















































