#!/bin/bash
<<mycom1
for server in $(cat remoteservers.txt)
do
	echo "$server"
done
mycom1


while read servername username password cmd1 cmd2 cmd3
do
	echo "Executing $cmd1 in $servername"
	ssh -n $username@$servername $cmd1
	echo "Executing $cmd2 in $servername"
	ssh -n $username@$servername $cmd2
	echo "Executing $cmd3 in $servername"
	ssh -n $username@$servername $cmd3
done < remoteservers.txt
