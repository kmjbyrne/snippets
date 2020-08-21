#!/bin/bash

cd /home/ec2-user/app
echo "[+] Running down Docker containers"
docker-compose down
