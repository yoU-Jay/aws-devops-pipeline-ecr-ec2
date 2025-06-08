#!/bin/bash
yum update -y
amazon-linux-extras install docker -y
yum install -y dos2unix
systemctl start docker
systemctl enable docker
usermod -a -G docker ec2-user
