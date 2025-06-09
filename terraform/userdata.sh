#!/bin/bash
yum update -y
yum install -y docker
service docker start
systemctl status docker
systemctl enable docker
usermod -a -G docker ec2-user 