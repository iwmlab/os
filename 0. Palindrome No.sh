#!/bin/bash

echo -n "Enter a number: "
read num

# Store the original number
original_num=$num

# Reverse the number
reverse=0
while [ $num -gt 0 ]
do
    remainder=$((num % 10))
    reverse=$((reverse * 10 + remainder))
    num=$((num / 10))
done

# Check if the number is palindrome or not
if [ $original_num -eq $reverse ]
then
    echo "$original_num is a palindrome number."
else
    echo "$original_num is not a palindrome number."
fi

echo "Reverse of $original_num is: $reverse"
