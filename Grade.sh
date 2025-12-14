#!/bin/bash

pass=0
fail=0

while true; do
    read -p "Enter Student ID: " id
    [ "$id" == "exit" ] && break

    read -p "Marks Subject 1: " s1
    read -p "Marks Subject 2: " s2
    read -p "Marks Subject 3: " s3

    total=$((s1+s2+s3))
    percent=$((total*100/300))

    if (( percent>=90 )); then grade="A+"
    elif (( percent>=80 )); then grade="A"
    elif (( percent>=70 )); then grade="B"
    elif (( percent>=60 )); then grade="C"
    elif (( percent>=50 )); then grade="D"
    else grade="F"; fi

    if (( percent>=50 )); then ((pass++)); else ((fail++)); fi

    echo "ID:$id Total:$total Percent:$percent% Grade:$grade"
    
done

echo "Total Pass:$pass Fail:$fail"
