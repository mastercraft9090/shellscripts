#!/bin/bash

#This scripts generates a list of random passwords.

# A random number as a password

PASSWORD="${RANDOM}"
echo "${PASSWORD}"

PASSWORD="${RANDOM}${RANDOM}${RANDOM}" #Variable Password is assigned to RANDOM which is an in-built in bash funciton for generating random numbers.
echo "${PASSWORD}"

# Use the current date/time as a basis for the passwd

PASSWORD=$(date +%s) # This assign this to the variable/
echo "${PASSWORD}"


# Use nano seconds to act as randomization
PASSWORD=$(date +%s%N)
echo "${PASSWORD}"

# Create a better a better password
PASSWORD=$(date +%s%N) | sha256sum | head -c15
echo "${PASSWORD}"

PASSWORD=$(date +%s%N | sha256sum | head -c32)
echo "${PASSWORD}"

#An even better password
PASSWORD=$(date +%s%N${RANDOM}${RANDOM} | sha256sum | head -c48)
echo "${PASSWORD}"

# Append a special character to the string
SPECIAL_CHARACTER=$(echo '!@#$%^&*' | fold -w1 | shuf | head -c1)
echo "${PASSWORD}${SPECIAL_CHARACTER}"
