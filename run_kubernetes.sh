#!/usr/bin/env bash

# dockerpath="noahgift/flasksklearn"
dockerpath="phermann91/mlmicroservice"

# Run in Docker Hub container with kubernetes
kubectl run mlmicroservice --image=$dockerpath --port=80

# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward mlmicroservice 8000:80
