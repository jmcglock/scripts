#!/bin/bash

# run this after a fresh install of ubuntu server
# Check for and install updates
apt-get update
apt-get upgrade -y

# Install Docker
apt-get install docker -y

# Create a new sudo user named "YOUR NAME"
adduser YOUR NAME
usermod -aG sudo YOUR NAME