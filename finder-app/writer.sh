#!/bin/sh
# script for assignment 1 and assignment 2
# Author: Omar Adel Shalaan


PathFileName=$1
Content=$2

# -z: True if the string is empty
if [ "$#" -ne 2 ]; then
    echo 
    return 1;
fi
mkdir -p "$(dirname "$PathFileName")"
echo "$Content" > "$PathFileName"
