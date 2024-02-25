#!/bin/bash
sudo yum update -y
sudo yum -y install docker
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -a -G ec2-user
sudo chmod 666 /var/run/docker.sock
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo yum -y install git 
git clone https://github.com/03Aziz02/wordpress.git
cd wordpress
docker-compose up -d
