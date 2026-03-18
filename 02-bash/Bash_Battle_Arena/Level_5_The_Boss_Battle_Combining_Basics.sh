#!/bin/bash

# Mission: Combine what you've learned! Write a script that:

# 1. Creates a directory names 'Battlefield'
# 2. Inside Battlefield, create files named knight.txt, sorcerer.txt, and rogue.txt.
# 3. Check if knight.txt exists; if it does, move it to a new directory called Archive.
# 4. List the contents of both Battlefield and Archive.

mkdir Battlefield
cd Battlefield
touch knight.txt scorcerer.txt rouge.txt

file_path="./Battlefield/knight.txt"

if [ -f "$file_path" ]; then
    mkdir -p Archive
    mv ./Battlefield/knight.txt Archive/
    echo "The knight.txt file has been moved to Archive."
else
    echo "The knight.txt file not found."
fi

echo "Contents of Battlefield:"
ls Battlefield

echo "Content of Archive:"
ls Archive