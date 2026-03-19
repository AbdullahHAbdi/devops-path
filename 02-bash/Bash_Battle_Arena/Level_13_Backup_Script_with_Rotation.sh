#!/bin/bash

# Mission: Create a script that backs up a directory to a specified location and keeps only the last 5 backups.

dir=$1
backup_destination=$2


if [ ! -d "$dir" ]; then
    echo "Directory does not exist."
    exit 1
fi

timestamp=$(date '+%Y-%m-%d_%H-%M-%S')
backup_name="backup_$timestamp"


tar -czf "$backup_destination/$backup_name.tar.gz" "$dir" 

echo "$(date '+%Y-%m-%d %H:%M:%S') - Backup of $dir made to $backup_destination"


cd "$backup_destination" || exit
ls -t backup_*.tar.gz | tail -n +6 | xargs -r rm --

echo "Remove old backups and kept last 5."