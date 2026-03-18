#!/bin/bash

# Mission: Write a script that monitors a directory for any changes (file creation, modification, or deletion) and logs the changes with a timestamp.

dir=$1

if [ ! -d "$dir" ]; then
    echo "Directory does not exist."
    exit 1
fi

find $dir -type f -exec md5sum {} + > snapshot_initial.md5

while true; do 
    sleep 1
    find $dir -type f -exec md5sum {} + > snapshot_new.md5
    if ! diff snapshot_initial.md5 snapshot_new.md5 > /dev/null; then
        cp snapshot_new.md5 snapshot_initial.md5
        echo "$(date '+%Y-%m-%d %H:%M:%S') - Change detected in $dir"
    fi
done