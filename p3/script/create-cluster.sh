#!/bin/bash

tput setaf 2; echo "Creating cluster named 'mycluster'..."
k3d cluster create --config config.yaml
