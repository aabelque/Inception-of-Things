#!/bin/bash

tput setaf 2; echo "Creating namespace dev..." ; tput sgr 0
kubectl create namespace dev
tput setaf 2; echo "Apply project..." ; tput sgr 0
kubectl apply -f project.yml -n argocd
tput setaf 2; echo "Apply application..." ; tput sgr 0
kubectl apply -f application.yml -n argocd
