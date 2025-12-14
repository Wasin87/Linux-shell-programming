#!/bin/bash

read -p "Enter starting year: " s
read -p "Enter ending year: " e

count=0

echo "Leap years between $s and $e:"
for ((y=s; y<=e; y++))
do
    if (( y % 400 == 0 )) || (( y % 4 == 0 && y % 100 != 0 )); then
        echo $y
        ((count++))
    fi
done

echo "Total Leap Years = $count"