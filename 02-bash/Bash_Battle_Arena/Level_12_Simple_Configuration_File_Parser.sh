#!/bin/bash

# Mission: Write a script that reads a configuration file in the format KEY=VALUE and prints each key-value pair.

read_config_file() {
    file_path="$1"

    if [ -z "$file_path" ]; then
        echo "No file provided."
        exit 1
    fi

    while IFS= read -r line; do
        key=${line%%=*}
        value=${line#*=}

        echo "Key: $key | Value: $value"
    done < "$file_path"


}

read_config_file "$1"