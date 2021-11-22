#!/bin/bash

tput setaf 2; echo "Building lab..." ; tput sgr 0
./script/install_k3d.sh
./script/create_cluster.sh
./script/install_argocd.sh
./script/create_ingress.sh
./script/create_app_argocd.sh
tput setaf 2; echo "Lab built" ; tput sgr 0
