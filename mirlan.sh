#!/bin/bash

# author: Mirlan
# This random bash script.

echo "What is your name?"

read name

echo "How old are you?"

read age

echo "Hello $name, you are $age years old."

sleep 2

iwillberich=$((( $RANDOM % 15 ) + $age ))

echo "$name, you will become a millionara when you are $iwillberich years old"



