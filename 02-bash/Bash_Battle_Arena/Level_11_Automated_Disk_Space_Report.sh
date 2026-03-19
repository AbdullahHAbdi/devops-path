#!/bin/bash

# Mission: Create a script that checks the disk space usage of a specified directory and sends an alert if the usage exceeds a given threshold.

dir="$1"
threshold="80"

disk_space_check() {
    if [ -z "$dir" ]; then
        echo "No directory provided."
        exit 1
    fi

    USAGE=$(df -h "$dir" | awk 'NR==2 {print $5}' | sed 's/%//')
    
    if [ "$USAGE" -ge "$threshold" ]; then
        echo "WARNING: Disk usage on $dir is at ${USAGE}% which is at or above the ${threshold}% threshold." 

    else
        echo "Info: Disk usage on $dir is at ${USAGE}% which is below the ${threshold}% threshold."
    fi    

}

disk_space_check 