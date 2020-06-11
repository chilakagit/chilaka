#!/bin/bash
#This is the httpd automation script with case statement

user_id=$(id -u)

[[ $user_id -eq 0 ]] && echo "You are the Root user" || echo "you are not Root user"

#read -p "Enter the Action you want to do with HTTPD: " user_action

if [[ $# -ne 1 ]]
then
	echo "Please run this script with below options"
	echo "start|stop|restart|status"
	exit
fi
user_action=$1
case $user_action in 

	start)
		echo "Starting the HTTPD..................."
		systemctl status httpd &> /dev/null || systemctl start httpd;;
	stop)
		echo "Stopping the HTTPD.................."
		systemctl status httpd &> /dev/null  && systemctl stop httpd;;
	restart)
		echo "Restarting the HTTPD.................."
		systemctl restart httpd;;
	status)
		echo "Checking the status of HTTPD.........."
		systemctl status httpd;;
	*)
		echo "you choosen INVALID option"
		echo "Choose valid options like start restart status stop"
esac	 
