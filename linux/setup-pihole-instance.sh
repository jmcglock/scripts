# Update the package manager and upgrade installed packages
sudo apt-get update && sudo apt-get upgrade -y

# Install the required dependencies
sudo apt-get install git dnsutils bc

# Clone the Pi-hole installation script from GitHub
git clone --depth 1 https://github.com/pi-hole/pi-hole.git Pi-hole

# Navigate to the Pi-hole directory and run the installation script
cd Pi-hole
sudo bash install.sh
