#!/bin/bash

# Mission: Combine the skills you've gained! Write a script that:

# 1. Presents a menu to the user with the following options:

# - Check disk space
# - Show system uptime
# - Backup the Arena directory and keep the last 3 backups
# - Parse a configuration file settings.conf and display the values

# 2. Execute the chosen task.

while true; do
    echo "Which system task would you like to run?"
    echo "1. Check disk space"
    echo "2. Show system uptime"
    echo "3. Backup Arena directory"
    echo "4. Parse a configuration file settings.conf and display the values"
    echo "5. Exit"

    read option

    if [ "$option" -eq 1 ]; then
        df -h
    elif [ "$option" -eq 2 ]; then
        uptime -p
    elif [ "$option" -eq 3 ]; then
        dir="Arena"
        backup="Backups"

        mkdir -p "$backup"

        timestamp=$(date '+%Y-%m-%d_%H-%M-%S')
        backup_name="backup_$timestamp"


        tar -czf "$backup/$backup_name.tar.gz" "$dir" 

        echo "$(date '+%Y-%m-%d %H:%M:%S') - Backup of $dir made to $backup"


        cd "$backup" || exit
        ls -t backup*.tar.gz | tail -n +4| xargs -r rm
    elif [ "$option" -eq 4 ]; then
        config_file="settings.conf"

        if [ ! -f "$config_file" ]; then    
            echo "Configuration file does not exist"
            continue
        fi  


        while IFS='=' read -r key value; do
        
        echo "Key: $key | Value: $value"
        done < "$config_file"

    elif [ "$option" -eq 5 ]; then
        echo "Goodbye!"
        break
    else
        echo "Please select from the following options"
    fi
done