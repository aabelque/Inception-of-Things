#!/bin/bash

tput setaf 2; echo "Creating Ingress for ArgoCD..."; tput sgr 0
kubectl apply -f ingress.yaml -n argocd
