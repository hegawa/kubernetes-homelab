#!/bin/bash

# Update system packages
sudo apt update

# Install Docker
sudo apt install -y docker.io

# Enable and start Docker service
sudo systemctl enable docker
sudo systemctl start docker

# Install kubeadm, kubelet, and kubectl
sudo apt install -y kubeadm kubelet kubectl

# Initialize Kubernetes master node
sudo kubeadm init

# Configure kubectl for the current user
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Deploy a pod network to the cluster
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml

# Print join command for worker nodes
sudo kubeadm token create --print-join-command