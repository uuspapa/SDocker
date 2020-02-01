#!/bin/bash

curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh
usermod -aG docker $USER
systemctl start docker
systemctl enable docker
curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
yum install -y git
git clone https://github.com/uuspapa/SSR-Docker.git ~/SSR-Docker
cd ~/SSR-Docker
docker-compose up -d
docker-compose start ssr