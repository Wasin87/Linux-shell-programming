#!/bin/bash

prime_check() {
    n=$1
    if [ $n -le 1 ]; then
        echo "not prime"
        return
    fi
    for ((i=2; i*i<=n; i++))
    do
        if [ $((n%i)) -eq 0 ]; then
            echo "$n not prime"
            return
        fi
    done
    echo "prime"
}

leap_check() {
    y=$1
    if [ $((y%400)) -eq 0 ] || ([ $((y%4)) -eq 0 ] && [ $((y%100)) -ne 0 ]); then
        echo "$y is leap year"
    else
        echo "$y not leap year"
    fi
}

sum_series() {
    n=$1
    sum=0
    for ((i=1; i<=n; i++))
    do
        sum=$((sum+i))
    done
    echo "sum = $sum"
}

read -p "Enter a number: " num

while true
do
    echo "1. check prime"
    echo "2. check leap year"
    echo "3. sum of series"
    echo "4. exit"
    read -p "choose option: " ch
    
  
    ch=$(echo $ch | tr -d '[:space:]')
    
    case $ch in
        1) prime_check $num ;;
        2) leap_check $num ;;
        3) sum_series $num ;;
        4) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid choice" ;;
    esac
    echo ""
done