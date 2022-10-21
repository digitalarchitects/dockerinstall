#!/bin/bash
echo "installing prereqs"
sudo apt install apt-transport-https ca-certificates curl software-properties-common lsb-release
read -p "press a key"
echo "add docker key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-archive-keyring.gpg
read -p "press a key"
echo "add docker repo"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
read -p "press a key"
echo "update docker repo"
sudo apt update
read -p "press a key"
echo "check version of docker repo"
apt-cache policy docker-ce
read -p "press a key"
echo "install docker-ce"
sudo apt install docker-ce
read -p "press a key"
echo "check service for docker-ce"
systemctl status docker
read -p "press a key"
echo "add user to service for docker-ce"
sudo usermod -aG docker ${USER}
read -p "press a key"
echo "add group for docker"
newgrp docker
read -p "press a key"
echo "add group for docker"
