#!/bin/bash
sudo apt update -y
sudo apt install git -y
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo chmod 700 get-docker.sh
sudo sh ./get-docker.sh
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo groupadd docker
sudo usermod -aG docker $USER
git clone https://github.com/mowadigital/magento-docker-compose.git
cd magento-docker-compose/
sudo docker-compose up -d
