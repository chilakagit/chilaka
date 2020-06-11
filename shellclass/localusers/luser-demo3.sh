#!/bin/bash
#Display the UID and username of the user executing this script
#Display if the user is the root user or not

#Display the UID
echo "Your ID is ${UID}"

#Only Display if the UID does not match 1000
#UID_TO_TEST_FOR='1000'
#if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
#then
#	echo "Your UID is ${UID_TO_TEST_FOR}"
#	exit 1
#fi
#Display the username
USER_NAME=`id -nu`

#Test if the command succeded
if [[ "${?}" -ne 1000 ]]
then
echo "The id command did not execute successsfully"
exit 1
fi
echo "your user name is ${USER_NAME}"

#you can use a string test additional
USER_NAME_TO_TEST_FOR ='redhat'
if [[ "${USER_NAME}" == "{USER_NAME_TO_TEST_FOR}" ]]
then
echo "YOUR user Name matches ${USER_NAME_TO_TEST_FOR}"
fi
