#!/bin/bash

sudo yum update -y

# Amazon AMI custom install for Docker
sudo amazon-linux-extras install docker
sudo service docker start

# Add Docker usr to ec2-user to avoid sudo commands
sudo usermod -a -G docker ec2-user

# Ensure Docker is auto-starting
sudo chkconfig docker on

# installation for docker compose
curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Ensure working directory is empty
echo "[+] cleaning pre release directory data"
sudo rm -rf /home/ec2-user/app

# Just a final sanity check to ensure Docker is installed
docker-compose version
