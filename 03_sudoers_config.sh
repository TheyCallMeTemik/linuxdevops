#!/bin/bash
echo "admin1 ALL=(ALL) ALL" | sudo tee /etc/sudoers.d/admins
echo "autobot ALL=(ALL) NOPASSWD: /bin/systemctl restart taskboard.service" | sudo tee /etc/sudoers.d/automation
sudo chmod 440 /etc/sudoers.d/*
