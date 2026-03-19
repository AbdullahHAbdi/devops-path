#!/bin/bash

# Mission: Write a script that:

# 1. Creates a directory called Arena_Boss.
# 2. Creates 5 text files inside the directory, named file1.txt to file5.txt.
# 3. Generates a random number of lines (between 10 and 20) in each file.
# 4. Sorts these files by their size and displays the list.
# 5. Checks if any of the files contain the word 'Victory', and if found, moves the file to a directory called Victory_Archive.

mkdir Arena_Boss

for i in {1..5}; do
    touch ./Arena_Boss/file$i.txt
    lines=$(( (RANDOM % 11) + 10 ))
    j=1
    while [ $j -le $lines ]; do
        echo "Line $j" >> "./Arena_Boss/file$i.txt"
        j=$((j + 1))
    done    
done

echo "Victory" >> "./Arena_Boss/file3.txt"

ls -s ./Arena_Boss/file*.txt | sort -n

mkdir Victory_Archive

victory_files=$(grep -l "Victory" ./Arena_Boss/*.txt)
for file in $victory_files; do
    mv $file Victory_Archive
done

