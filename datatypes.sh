#!/bin/bash

Num1=$1
Num2=$2

echo "The sum of $Num1 and $Num2 is: $(($Num1 + $Num2))"

if [ -z "$Num1" ] || [ -z "$Num2" ]; then
    echo "Error: Two numeric arguments are required."
    exit 1
fi


echo "number of arguments: $#"
echo "all arguments: $@"
echo "all arguments: $*"
echo "script name: $0"
echo "last command status: $?"
echo "PID of the script: $$"
echo "PID of the last command: $!"
echo "The date is: $(date)"
echo "The hostname is: $(hostname)"
echo "The current working directory is: $(pwd)"
echo "The user is: $(whoami)"
echo "The home directory is: $HOME"
