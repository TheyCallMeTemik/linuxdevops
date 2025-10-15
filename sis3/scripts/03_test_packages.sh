#!/bin/bash
set -e
if systemctl is-active --quiet nginx; then echo "Nginx is running"; else echo "Nginx is NOT running"; fi
if systemctl is-active --quiet postgresql; then echo "PostgreSQL is running"; else echo "PostgreSQL is NOT running"; fi
node -v && npm -v
if [ -d "/var/taskboard" ]; then
  cd /var/taskboard
  node -e "console.log('Express test executed')"
else
  echo "/var/taskboard not found"
fi
