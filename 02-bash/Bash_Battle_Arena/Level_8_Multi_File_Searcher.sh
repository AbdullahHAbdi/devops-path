#!/bin/bash

# Mission: Create a script that searches for a specific word or phrase across all .log files in a directory and outputs the names of the files that contain the word or phrase.

multi_file_searcher() {
    search_term="$1"

    if [ -z "$search_term" ]; then
        echo "No search term provided."
        exit 1
    else
        echo "Search term has been found in:"
        grep -l "$search_term" *.log
    fi
}

multi_file_searcher "hello"