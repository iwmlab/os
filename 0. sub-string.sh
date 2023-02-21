#!/bin/bash

# Take input for the string and the sub-string
read -p "Enter the string: " string
read -p "Enter the sub-string: " sub_string

# Count the number of occurrences of the sub-string
count=$(echo $string | tr ' ' '\n' | grep -c $sub_string)

# Check if the sub-string exists in the string
if [ $count -ne 0 ]
then
    echo "$sub_string exists in $string"
    echo "Number of occurrences of $sub_string: $count"
else
    echo "$sub_string does not exist in $string"
fi
