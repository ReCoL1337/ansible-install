#!/bin/bash

# Update the package list
sudo apt-get update -y

# Install the necessary dependencies
sudo apt-get install -y software-properties-common

# Add the Ansible repository and its GPG key
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367

# Update the package list with the new repository
sudo apt-get update -y

# Install Ansible
sudo apt-get install -y ansible

# Check the Ansible installation
ansible --version
