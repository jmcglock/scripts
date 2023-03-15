# Update the package list and install all updates
sudo apt update && sudo apt upgrade -y

# Install snap
sudo apt update && sudo apt install snapd && sudo snap install snap-store

# Install Applications
sudo apt update
sudo snap install code --classic
sudo snap install discord
sudo snap install signal-desktop
sudo snap install termius-app
echo 'deb http://download.opensuse.org/repositories/home:/jstaf/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/home:jstaf.list
curl -fsSL https://download.opensuse.org/repositories/home:jstaf/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_jstaf.gpg > /dev/null
sudo apt install onedriver gnome-tweaks space spotify starship brave

# Reboot
sudo reboot