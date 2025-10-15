#!/bin/bash
set -e
sudo ufw --force reset
sudo ufw allow 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw allow from 192.168.56.0/24 to any port 5432 proto tcp
sudo ufw --force enable
sudo ufw status verbose
