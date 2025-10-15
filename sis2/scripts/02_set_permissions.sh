#!/bin/bash
sudo mkdir -p /var/taskboard
sudo chown taskboard:taskboard /var/taskboard
sudo chmod 750 /var/taskboard

sudo mkdir -p /var/www/taskboard
sudo chown nginx:nginx /var/www/taskboard
sudo chmod 755 /var/www/taskboard

sudo chown postgres:postgres /var/lib/postgresql -R

sudo chown root:auditors /var/log
sudo chmod 750 /var/log
