#!/bin/bash
find /var/log/linuxsis/ -type f -mtime +7 -exec rm -f {} \;
