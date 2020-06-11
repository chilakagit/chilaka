#!/bin/bash
<<mcom1
echo "List In Remote Host"
sshpass -f pass ssh root@192.168.43.206 "ls"
echo "Date In Remote Host"
sshpass -f pass ssh root@192.168.43.206 "date"
echo "Uptime In Remote Host"
sshpass -f pass ssh root@192.168.43.206 "uptime"
mcom1
<<mcom3
for server in 192.168.43.206 192.168.43.39
do
	echo "Executing commands in $server"

for i in date ls "free -m"
	do
		echo "The $i command ouput"
		sshpass -f pass ssh root@$server "$i"
	done
done
mcom3
<<mcom2
for i in date ls "free -m"
do
	echo "Executing commands in server"
	sshpass -f pass root@192.168.43.206 "$i"
done
mcom2

#script for passwordless ssh
<<mcom4
for server in 192.168.43.206 192.168.43.39
do
	echo "Executing commands in $server"
	for cmd in ls date "free -m"
	do
		echo "Executing command $cmd"
		ssh root@"$server" "$cmd"
	done 
done
mcom4
#in this script we are storing server ip's in a file
<<mcom5
for server in $(cat remoteservers.txt)
do
	echo "Executing commands in $server"
	for cmd in ls date "free -m"
        do
              echo "Executing command $cmd"
              ssh root@"$server" "$cmd"
        done
done
mcom5
#Thi script will check the version for ssh in client,since i have common user on all machines as ansible iam using it here
for server in $(cat remoteservers.txt)
do
	echo "checking ssh version for $server"
	for i in "ssh -V"
	do
		echo "checkin $i version for $server"
		ssh ansible@$server "$i"
	done
done






