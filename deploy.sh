#!/bin/bash 
sed -i 's|IMAGE_TAG|${IMAGE_TAG}|g' deployment.yaml
kubectl apply -f k8s/deployment.yaml 
kubectl apply -f k8s/service.yaml 
kubectl apply -f k8s/namespace.yaml 
