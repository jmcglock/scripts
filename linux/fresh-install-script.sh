#!/bin/bash

# run this after a fresh install of ubuntu server
# Check for and install updates
sudo apt-get update
sudo apt-get upgrade -y

# Install Docker
sudo apt-get install docker -y

# Create a new sudo user named "YOUR NAME"
adduser YOUR NAME
usermod -aG sudo YOUR NAME

# Reboot
sudo reboot