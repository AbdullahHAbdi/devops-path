#!/bin/bash

# Ensures you have the latest security patches and package versions
# -y flag auto-confirms the installation prompt
sudo yum update && sudo yum install nginx -y



# This makes the web server active right away
# Ensures the server survives a reboot without manual intervention
sudo service nginx start && sudo systemctl enable nginx


# Should show "active (running)" in green if everything went well
sudo systemctl status nginx
