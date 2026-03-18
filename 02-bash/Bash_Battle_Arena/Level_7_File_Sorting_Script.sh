#!/bin/bash

# Mission: Write a script that sorts all .txt files in a directory by their size, from smallest to largest, and displays the sorted list.

sort_by_size() {
    dir=$1
    if [ ! -d "$dir" ]; then
        echo "Directory does not exist."
    else
        echo "Files sorted by size in $dir:"
        ls -s ./$dir/*.txt | sort -n
    fi 


}



