#!/bin/bash

# Create a script that takes two numbers as input and performs basic arithmetic operations (addition, subtraction, multiplication, division).

read -p "Enter your first number: " num1
read -p "Enter your second number: " num2

add=$(( num1 + num2 ))
sub=$(( num1 - num2 ))
multi=$(( num1 * num2 ))

if [ $num2 -eq 0 ]
then
    echo "You cannot divide by 0"
    exit 1
fi


div=$(( num1 / num2 ))

echo "$num1 + $num2 = $add"  
echo "$num1 - $num2 = $sub"  
echo "$num1 × $num2 = $multi"  
echo "$num1 ÷ $num2 = $div"
