#!/bin/bash

echo "Enter two numbers: "
read a = 4
read b = 2

echo "Choose operation: "
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read operation

case $operation in
    1) result=$((a + b))
       echo "Addition: $a + $b = $result"
       ;;
    2) result=$((a - b))
       echo "Subtraction: $a - $b = $result"
       ;;
    3) result=$((a * b))
       echo "Multiplication: $a * $b = $result"
       ;;
    4) if [ $b -ne 0 ]; then
           result=$((a / b))
           echo "Division: $a / $b = $result"
       else
           echo "Division by zero is not allowed."
       fi
       ;;
    *) echo "Invalid operation"
       ;;
esac
