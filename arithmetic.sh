#!/bin/bash
# This script performs basic arithmetic operations

while true; do
    echo "Enter first number: "
    read num1
    echo "Enter second number: "
    read num2

    echo "Choose an operation:"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"

    read operation

    case $operation in
        1)
            result=$((num1 + num2))
            echo "Result: $num1 + $num2 = $result"
            ;;
        2)
            result=$((num1 - num2))
            echo "Result: $num1 - $num2 = $result"
            ;;
        3)
            result=$((num1 * num2))
            echo "Result: $num1 * $num2 = $result"
            ;;
        4)
            if [ $num2 -ne 0 ]; then
                result=$((num1 / num2))
                echo "Result: $num1 / $num2 = $result"
            else
                echo "Error: Division by zero is not allowed."
            fi
            ;;
        5)
            echo "Exiting the program."
            exit 0
            ;;
        *)
            echo "Invalid operation selected."
            ;;
    esac

    echo ""  # Print a blank line for better readability
done

