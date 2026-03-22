#!/bin/bash

# Create a script that checks if a file exists and displays its permissions.

read -p "Enter filename to check: " filename

if [ -f "$filename" ]; then
    echo "File $filename exists."

    if [ -r "$filename" ]; then
        echo "✓ File is readable"
    else
        echo "✗ File is not readable"
    fi

    if [ -w "$filename" ]; then
        echo "✓ File is writeable"
    else
        echo "✗ File is not writeable"
    fi

    if [ -x "$filename" ]; then
        echo "✓ File is executable"
    else
        echo "✗ File is not executable"
    fi    

else
    echo "File does not exist."
fi



