#!/bin/bash

# Install docker 
if ! command -v docker &>/dev/null
then
	tput setaf 2; echo "Update the apt package index and install packages..." ; tput sgr 0
	sudo apt-get update
	sudo apt-get install ca-certificates curl gnupg lsb-release apt-transport-https software-properties-common
	tput setaf 2; echo "Add Docker’s official GPG key..." ; tput sgr 0
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	tput setaf 2; echo "Set up the stable repository..." ; tput sgr 0
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
	tput setaf 2; echo "Installing Docker..." ; tput sgr 0
	sudo apt-get update
	sudo apt-get install docker.io -y
	tput setaf 2; echo "Verify that Docker Engine is installed correctly..." ; tput sgr 0
	sudo docker run hello-world
fi

# Install kubectl
if ! command -v kubectl &>/dev/null
then
	tput setaf 2; echo "Download the latest release of kubectl..." ; tput sgr 0
	curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
	tput setaf 2; echo "Installing kubectl..." ; tput sgr 0
	sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
fi

# Install k3d
if ! command -v k3d &>/dev/null
then
	tput setaf 2; echo "Installing k3d..." ; tput sgr 0
	curl -s https://raw.githubusercontent.com/rancher/k3d/main/install.sh | bash
fi
