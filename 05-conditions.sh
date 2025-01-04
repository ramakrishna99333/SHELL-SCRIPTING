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

if [ $? -ne 0 ]; then
echo "mysql installation failed"
exit 1;
else
    echo "mysql installation success"  
fi

yum install git -y

if [ $? -eq 0 ]; then
echo "mysql installation failed"
exit 1;
else
    echo "git installation success"
fi