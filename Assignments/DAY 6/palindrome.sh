#!/bin/bash

function is_palindrome() {
    num=$1
    rev=0
    while (( num > 0 )); do
        digit=$(( num % 10 ))
        rev=$(( rev * 10 + digit ))
        num=$(( num / 10 ))
    done

    if (( rev == $1 )); then
        echo "$1 is a palindrome"
    else
        echo "$1 is not a palindrome"
    fi
}

read -p "Enter first number: " num1
read -p "Enter second number: " num2

is_palindrome $num1
is_palindrome $num2
