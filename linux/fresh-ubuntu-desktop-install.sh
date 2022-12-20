# Update the package list and install all updates
sudo apt update
sudo apt upgrade -y

# Install dpkg and wget
sudo apt install dpkg wget -y

# Install snap
sudo apt update
sudo apt install snapd
sudo snap install snap-store

# Install Visual Studio Code
sudo snap install code --classic

# Install Discord
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i discord.deb
sudo apt install -f

# Install Signal
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop -y

# Install OneDriver
echo 'deb http://download.opensuse.org/repositories/home:/jstaf/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/home:jstaf.list
curl -fsSL https://download.opensuse.org/repositories/home:jstaf/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_jstaf.gpg > /dev/null
sudo apt update
sudo apt install onedriver

# Install Space
sudo snap install space

# Install Spotify
sudo snap install spotify

# Install Starship
sudo snap install starship

# Install Brave
sudo snap install brave

sudo reboot