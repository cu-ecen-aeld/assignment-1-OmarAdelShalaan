#!/bin/sh
# script for assignment 1 and assignment 2
# Author: Omar Adel Shalaan

filesdir=$1
searchstr=$2

# -z: True if the string is empty
if [ -z "$1" ]; then
    echo "Enter filesdir"
    return 1;
fi

if [ ! -d "$1" ]; then 
    echo "not represent a directory on the filesystem"
    return 1;
fi

if [ -z "$2" ]; then
    echo "Enter searchstr"
    return 1;
fi

# Find the number of files in the directory and subdirectories
files_count=$(find "$filesdir" -type f | wc -l)

# Find the number of matching lines containing the search string
matching_lines_count=$(grep -r -i "$searchstr" "$filesdir" | wc -l)

# Print the result
echo "The number of files are $files_count and the number of matching lines are $matching_lines_count"
