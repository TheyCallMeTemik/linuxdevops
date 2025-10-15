#!/bin/bash
set -e
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y curl wget git ufw net-tools nginx postgresql postgresql-contrib nodejs npm
sudo npm install -g pm2
if [ -d "/var/taskboard" ]; then
  cd /var/taskboard
  npm install express dotenv pg cors
fi
echo "All packages installed successfully."
