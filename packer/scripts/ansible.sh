#!/bin/bash -eux

# Install Ansible repository.
sudo yum update -y
sudo amazon-linux-extras install epel -y
sudo yum update -y

# Install Ansible.
sudo yum install ansible -y
ansible --version
