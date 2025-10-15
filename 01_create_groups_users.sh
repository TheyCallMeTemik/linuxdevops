#!/bin/bash
sudo groupadd admins
sudo groupadd developers
sudo groupadd dba
sudo groupadd auditors
sudo groupadd automation
sudo groupadd taskboard
sudo groupadd nginx

sudo useradd -m -s /bin/bash admin1 -G admins,sudo
sudo useradd -m -s /bin/bash dev1 -G developers
sudo useradd -m -s /bin/bash dba1 -G dba
sudo useradd -m -s /bin/bash auditor1 -G auditors
sudo useradd -m -s /bin/bash autobot -G automation
sudo useradd -r -s /usr/sbin/nologin taskboard
sudo useradd -r -s /usr/sbin/nologin nginx
