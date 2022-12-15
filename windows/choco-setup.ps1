#install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

ECHO Installing apps

ECHO Configure chocolatey

choco feature enable -n allowGlobalConfirmation

#install termius
choco install termius
#install 7zip
choco install 7zip
#install bleachbit
choco install bleachbit
#install choco cleaner
choco install choco-cleaner 
#install chocolatey gui
choco install chocolateygui
#install kubens
choco install kubens
#install kubernetes cli
choco install kubernetes-cli
#install helm
choco install kubernetes-helm
#install kompose
choco install kubernetes-kompose
#install speedtest
choco install speedtest

choco install starship

choco feature disable -n allowGlobalConfirmation