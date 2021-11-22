#!/bin/bash

tput setaf 2; echo "Creating namespace argocd..." ; tput sgr 0
kubectl create namespace argocd
tput setaf 2; echo "Installing argocd..." ; tput sgr 0
kubectl apply -f install-argocd.yaml -n argocd
