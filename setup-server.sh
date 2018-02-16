#!/usr/bin/env bash

# Install Docker
sudo apt-get update
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get -y install docker-ce
sudo docker run hello-world

# Join Docker Swarm
# docker swarm init
# docker swarm join --token ${SWARM_TOKEN} 172.31.31.235:2377

# Add certificate support, acme file
touch /acme.json
chmod 600 /acme.json

