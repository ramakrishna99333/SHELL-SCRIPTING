#!/bin/bash

DATE=$(date)
echo "add user name"
read USER_NAME
echo "add password"
read -s PASSWORD

echo "The user name is: $USER_NAME"
echo "The password is: $PASSWORD"

echo "The date is: $DATE"