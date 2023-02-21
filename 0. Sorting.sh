#!/bin/bash

# Array of numbers to be sorted
arr=(8 3 1 0 6 2 7 9 5 4)

# Length of the array
n=${#arr[@]}

# Bubble sort algorithm
for ((i=0; i<n-1; i++))
do
    for ((j=0; j<n-i-1; j++))
    do
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done

# Print the sorted array
echo "Sorted array: ${arr[@]}"
