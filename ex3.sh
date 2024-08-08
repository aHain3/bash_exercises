#!/bin/bash

function multiplyNumbers(){
     ans=$numA*$numB
    echo "$numA * $numB = $ans"
}
function divideNumbers(){
    ans=$numA/$numB
    remainder=$numA%$numB
    echo "$numA / $numB = $ans with the remainder of $remainder"
}
function subtractNumbers(){
    ans=$numA-$numB
    echo "$numA - $numB = $ans"
}
function addNumbers(){
    ans=$numA+$numB
    echo "$numA + $numB = $ans"
}
x=0
while [ $x -eq 0 ];do
        echo "Type 2 numbers"
        read numA numB
        echo "Your two numbers are $numA and $numB"
        echo -e "what would you like to do with the two numbers?\n
Option:\n
1. Multiply\n
2. Divide\n
3. Add\n
4. Subtract"



        read operator
        if [ $operator == "Multiply" ]; then
        multiplyNumbers
        elif [ $operator == "Divide" ]; then
            divideNumbers
        elif [ $operator == "Add" ]; then
            addNumbers
        elif [ $operator == "Subtract" ]; then
            subtractNumbers
        else 
            echo "Try again, operator not known"
        fi
        echo "would you like to exit?" 
        read response
        if [ $response == "yes" ]; then
            $x+1 
            fi
            done   

