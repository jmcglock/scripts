# Update the package list and install all updates
sudo apt update
sudo apt upgrade -y

# Install snap
sudo apt update
sudo apt install snapd
sudo snap install snap-store

# Install Visual Studio Code
sudo snap install code --classic

# Install Discord
sudo snap install discord

# Install Signal
sudo snap install signal-desktop

# Install Termius
sudo snap install termius-app

# Install OneDriver
echo 'deb http://download.opensuse.org/repositories/home:/jstaf/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/home:jstaf.list
curl -fsSL https://download.opensuse.org/repositories/home:jstaf/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_jstaf.gpg > /dev/null
sudo apt update
sudo apt install onedriver

# Install gnome-tweaks
sudo apt install gnome-tweaks

# Install Space
sudo snap install space

# Install Spotify
sudo snap install spotify

# Install Starship
sudo snap install starship

# Install Brave
sudo snap install brave

# Install 

sudo reboot