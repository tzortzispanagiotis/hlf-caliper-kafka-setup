#!/bin/bash

echo "Hello!"
echo "=========="

echo "Setting up prerequisites for fabric..."
echo "This is compatible with debian/ubuntu based distros."
echo ""
echo "installing git..."

sudo apt-get update
sudo apt-get install git

echo "Git installed."

echo "Installing curl..."
sudo apt-get install curl
curl --version

echo "Installing wget..."
sudo  apt-get install wget
dpkg -l | grep wget

echo "Installing docker engine and docker compose..."
sudo apt-get remove docker docker-engine docker.io containerd runc
curl -fsSL https://get.docker.com -o get-docker.sh
chmod +x ./get-docker.sh

sudo sh get-docker.sh

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

echo "All set up."

