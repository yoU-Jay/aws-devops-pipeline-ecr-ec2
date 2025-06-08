#!/bin/bash
exec > /var/log/user-data.log 2>&1

yum update -y
amazon-linux-extras install docker -y
yum install -y docker
yum install -y dos2unix

systemctl start docker
systemctl enable docker

usermod -a -G docker ec2-user

# Confirm Docker is installed and running
docker --version
systemctl status docker

# Add a marker file for confirmation
echo "Docker installation complete" > /home/ec2-user/setup_done.txt