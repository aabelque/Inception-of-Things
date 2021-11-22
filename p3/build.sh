#!/bin/bash

tput setaf 2; echo "Building lab..." ; tput sgr 0
./script/install_k3d.sh
./script/create-cluster.sh
./script/install-argocd.sh
./script/create-ingress.sh
./script/create-app-argocd.sh
tput setaf 2; echo "Lab built" ; tput sgr 0
