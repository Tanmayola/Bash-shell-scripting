#!/bin/bash

groupadd devops
sudo useradd -m -u 5001 -g devops ansible
sudo useradd -m -u 5002 -g devops git
sudo useradd -m -u 5003 -g devops docker

sudo mkdir -p /production
sudo chmod 070 /production
sudo chown :devops /production

sudo yum install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx

sudo echo "My Simple Page" > /usr/share/nginx/html/index.html

sudo systemctl restart nginx