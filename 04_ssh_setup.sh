#!/bin/bash
sudo mkdir -p /home/autobot/.ssh
sudo chown autobot:automation /home/autobot/.ssh
sudo chmod 700 /home/autobot/.ssh

echo "ssh-rsa AAAAB3Nza... autobot@taskboard" | sudo tee /home/autobot/.ssh/authorized_keys
sudo chown autobot:automation /home/autobot/.ssh/authorized_keys
sudo chmod 600 /home/autobot/.ssh/authorized_keys

sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
sudo sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart ssh
