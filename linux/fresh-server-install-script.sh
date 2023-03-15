#!/bin/bash
# Add a sudo user
adduser <YOUR USERNAME> --gecos "Last,First,123 Main St.,Seattle,WA,12345,123-456-7890" --disabled-password
echo "<YOUR USERNAME>:<YOUR PASSWORD>" | chpasswd
usermod -aG sudo <YOUR USERNAME>

# Update SSH port to 69 (nice)
sed -i 's/#Port 22/Port 69/g' /etc/ssh/sshd_config

# Apply any updates and upgrades
su <YOUR USERNAME>
apt-get update && apt-get upgrade -y

# Reboot the server
shutdown -r now