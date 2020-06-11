#!/bin/bash
#This scripti will explain about arithmetic expressions

read -p "Enter first number: " A
read -p "Enter second Number: " B
mul=$(( $A*$B ))

echo "Multiplication Result is: $mul"

read -s -p "Enter your password: " Passwd

echo "Your password is: $Passwd"
