#!/bin/bash
 
check_prime() {
    n=$1
    if [ $n -le 1 ]; then
        echo "$n is not prime."
        return
    fi
    for ((i=2; i*i<=n; i++)); do
      if [ $((n % i)) -eq 0 ]; then
       echo "$n is not prime."
          return
        fi
    done
    echo "$n is prime."
}

check_leap() {
    year=$1
    if (( (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) )); then
        echo "$year is a leap year."
    else
        echo "$year is not a leap year."
    fi
}

sum_series() {
    n=$1
    sum=0
    for ((i=1; i<=n; i++)); do
        sum=$((sum + i))
    done
    echo "Sum of series = $sum"
}

read -p "Enter a number: " num

while true; do
    echo "Menu:"
    echo "1) Check Prime"
    echo "2) Check Leap Year"
    echo "3) Print Sum of Series"
    echo "4) Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1) check_prime $num ;;
        2) check_leap $num ;;
        3) sum_series $num ;;
        4) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid choice, try again." ;;
    esac
done