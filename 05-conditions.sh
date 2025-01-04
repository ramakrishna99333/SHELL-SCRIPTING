#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date)

echo "The current timestamp is: $TIMESTAMP"
if [ $ID -ne 0 ]; then
    echo "ERROR:: Please run this script with root access"
    exit 1 # you can give other than 0
else
    echo "You are root user" 
fi

yum install mysql -y

if [ $? -eq 0 ]; then
    echo "mysql installed successfully"
else
    echo "mysql installation failed"
fi

yum install git -y

if [ $? -eq 0 ]; then
    echo "git  installed successfully"
else
    echo "git installation failed"
fi