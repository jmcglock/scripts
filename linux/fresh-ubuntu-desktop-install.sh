# Update the package list and install all updates
sudo apt update
sudo apt upgrade -y

# Install dpkg and wget
sudo apt install dpkg wget -y

# Install Brave browser
wget -qO- https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y

# Install Microsoft Edge Beta
wget https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-dev/microsoft-edge-dev_91.0.864.55-1_amd64.deb
sudo dpkg -i microsoft-edge-dev_91.0.864.55-1_amd64.deb
sudo apt install -f

# Install Visual Studio Code
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update
sudo apt install code -y

# Install JetBrains Toolbox
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.21.7135.tar.gz
tar -xzf jetbrains-toolbox-1.21.7135.tar.gz
./jetbrains-toolbox-1.21.7135/jetbrains-toolbox

# Install MySQL Workbench
sudo apt install mysql-workbench -y

# Install Stacer
wget https://github.com/oguzhaninan/Stacer/releases/download/v1.1.0/stacer_1.1.0_amd64.deb
sudo dpkg -i stacer_1.1.0_amd64.deb
sudo apt install -f

# Install Discord
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i discord.deb
sudo apt install -f

# Install Termius
wget https://downloads.termius.com/linux/Termius.deb
sudo dpkg -i Termius.deb
sudo apt install -f

# Install Signal
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop -y

# Install Spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install spotify-client -y

# Install Ookla Speedtest
wget https://bintray.com/ookla/download/download_file?file_path=ookla-speedtest-1.0.0-x86_64-linux.tgz -O ookla-speedtest.tgz
tar -xzf ookla-speedtest.tgz
sudo mv speedtest /usr/local/bin/


