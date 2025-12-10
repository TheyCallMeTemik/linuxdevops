sudo journalctl
journalctl | grep sudo
journalctl -u sshd
sudo nano /etc/audit/rules.d/audit.rules
sudo systemctl restart auditd
sudo ausearch -k sudoers_change
