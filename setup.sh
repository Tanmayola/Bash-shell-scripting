#!/bin/bash

yum install -y httpd git java-1.8.0-openjdk python3
groupadd project
useradd -m -u 2002 -g project kevin
useradd -m -u 2003 -g project Tokyo
useradd -m -u 2004 -g project berlyn
systemctl start httpd
systemctl enable httpd

echo "Setup complete: Applications installed, users created, and group assigned."
