#!/bin/bash

# Create a script that backs up all .txt files from one directory to another.
# Example output:

# Enter source directory: /home/user/documents

# Backup directory created: backup_2024-11-29_14-30 Copying .txt files...

# Backup complete! Files backed up: 5

read -p "Enter source directory: " source_dir

if [ ! -d "$source_dir" ]; then
    echo "Directory does not exist."
    exit 1
fi    

count=$(ls $source_dir/*.txt | wc -l)

if [ $count -eq 0 ]; then
    echo "No .txt files found in $source_dir"
    exit 1
fi

timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p Backup_$timestamp

echo "Backup directory created: Backup_$timestamp Copying .txt files..."

cp $source_dir/*.txt Backup_$timestamp

echo "Backup complete! Files backed up: $count"
