#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=rishkov/microserv-mla:latest
dockerpath='rishkov/microserv-mla:latest'

# Step 2
# Run the Docker Hub container with kubernetes
# kubectl run machinelearning --image=$dockerpath --port=80
kubectl run machinelearning --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
# kubectl get pods
kubectl get pods

# Step 4:
# Forward the container port to a host
# kubectl port-forward deployment/machinelearning 8000:80
kubectl port-forward machinelearning 8000:80
