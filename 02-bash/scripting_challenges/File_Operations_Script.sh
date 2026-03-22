#!/bin/bash

# Create a script that automates directory and file creation.

mkdir bash_demo
cd bash_demo
echo "Directory 'bash_demo' created." 

touch demo.txt
echo "File 'demo.txt' created."

echo "This file was created by a Bash script on $(date '+%Y-%m-%d %H:%M:%S')" > demo.txt

echo "File contents: "
cat demo.txt