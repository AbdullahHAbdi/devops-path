#!/bin/bash

# Mission: Create an interactive script that presents a menu with options for different system tasks (e.g., check disk space, show system uptime, list users), and executes the chosen task.

while true; do
    echo "Which system task would you like to run?"
    echo "1. Check disk space"
    echo "2. Show system uptime"
    echo "3. List users"
    echo "4. Exit"

    read option

    if [ "$option" -eq 1 ]; then
        df -h
    elif [ "$option" -eq 2 ]; then
        uptime -p
    elif [ "$option" -eq 3 ]; then
        getent passwd | awk -F: '{print $1}'
    elif [ "$option" -eq 4 ]; then
        echo "Goodbye!"
        break
    else
        echo "Please select from the following options"
    fi
done