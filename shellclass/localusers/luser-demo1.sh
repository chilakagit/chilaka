#!/bin/bash
#This Script displays various information to the screen
#Display 'Hello'

echo 'Hello'

#Assign a value to a variable

WORD='script'

#Display that value using the variable

echo "$WORD"

#combine the variable with hard-coded text
echo "This is a shell $WORD"

#Display the contents of the variable using an alternative syntax
echo "This is a shell ${WORD}"

#Append the variable to text

echo "${WORD}ing is fun!"

echo "This is ${WORD}ed"
LAST="ED"

echo "${WORD}${LAST} is good"

LAST="s"

echo "you are going to write many ${WORD}${LAST}"


