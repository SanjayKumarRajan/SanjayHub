#!/bin/bash

function is_prime() {
    num=$1
    if (( num < 2 )); then
        return 1
    fi
    for (( i=2; i*i<=num; i++ )); do
        if (( num % i == 0 )); then
            return 1
        fi
    done
    return 0
}

function get_palindrome() {
    num=$1
    rev=0
    while (( num > 0 )); do
        digit=$(( num % 10 ))
        rev=$(( rev * 10 + digit ))
        num=$(( num / 10 ))
    done
    echo $rev
}

read -p "Enter a number: " num

if is_prime $num; then
    echo "$num is prime"
    palindrome=$(get_palindrome $num)
    echo "Its palindrome is $palindrome"
    if is_prime $palindrome; then
        echo "$palindrome is also prime"
    else
        echo "$palindrome is not prime"
    fi
else
    echo "$num is not prime"
fi
