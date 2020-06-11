#!/bin/bash
read -p "Enter your name: " name
echo "My Name Is: ${name}"
echo "My Name In UpperCase: ${name^^}"
echo "My Name In LowerCase ${name,,}"
echo "Number Of Variables Entered: $#"
