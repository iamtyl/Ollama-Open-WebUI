#!/bin/bash

# Step 1: Update and upgrade the Ubuntu server
echo "Updating and upgrading the server..."
sudo apt-get update -y
sudo apt-get upgrade -y

# Step 2: Install the latest Ollama
echo "Installing Ollama..."
sudo apt-get install curl -y
curl -fsSL https://ollama.com/install.sh | sudo bash

# Step 3: Install Docker
echo "Installing Docker..."
sudo apt-get remove docker docker-engine docker.io containerd runc -y
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update -y
sudo apt-get install docker-ce -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
newgrp docker

# Step 4: Install ollama and pull llama3
ollama pull llama3 #or other LLMs
ollama list

# Step 5: Run OpenUi as container to comms with host
docker run -d --network=host -v open-webui:/app/backend/data -e OLLAMA_BASE_URL=http://localhost:11434 --name open-webui --restart always ghcr.io/open-webui/open-webui:main

# Test connection
curl http://localhost:8080
curl http://localhost:11434

# Install additional dependencies for llama:
sudo apt update && sudo apt upgrade
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt update
sudo apt install gcc-11 g++-11 -y
sudo apt-get install build-essential -y
sudo apt install python3.12-venv -y

# Run in venv
pip install llama-cpp-python -y
sudo apt install python3-dev
sudo apt install python3-pip
