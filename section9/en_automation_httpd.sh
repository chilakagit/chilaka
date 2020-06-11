#!/bin/bash
#Author:naveen
#This script will do the httpd actions like:start,stop,enable,restart,status

user_id=$(id -u)
#if [[ user_id -eq 0 ]] && echo "You are the root user you can run this scri    pt" || echo "you are not the root user to run this script"
if [[ user_id -ne 0 ]]; then
	echo "You are not the root user you can run this script"
fi
read -p "Enter your action for httpd: " usr_action

if [[ $usr_action == "start" ]]
then
        systemctl status httpd &> /dev/null || systemctl start httpd
        echo "Starting Httpd"

elif [[ $usr_action == "stop" ]]
then
	systemctl status httpd &> /dev/null &&  systemctl stop httpd
         echo "stopping httpd"

elif [[ $usr_action == "restart" ]]
then
	systemctl restart httpd
         echo "restarting httpd"

elif [[ $usr_action == "status" ]]
then
         systemctl status httpd
        echo "status of httpd"
else
	echo "Your actions are Invalid"
	echo "Valid Actions are start stop status restart"
fi
