#!/bin/bash
#Display the UID and username of the user executing this script
#Display if the user is the root user or not

#Display the UID
echo "your UID is ${UID}"

#Display the username
#USER_NAME=${id -nu}
USER_NAME=`id -un`
echo "your username is ${USER_NAME}"

#Display if the user is the root user or not
if [ "${UID}" -eq 0 ]
then
echo "You Are Root"
else
echo "Your Are Not Root"
fi
