#!/bin/bash
read -p "Enter Your first number: " x
read -p "Enter your second number: " y
echo "The result is : $(( x + y ))"
echo "The division is: $(bc<<<"scale=2;$y/$x")"
