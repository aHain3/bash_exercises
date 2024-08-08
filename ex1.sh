#!/bin/bash

echo "what is your name?"
greetingName(){
    echo "Hello $1"
}
read username
greetingName $username