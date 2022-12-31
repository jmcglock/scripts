#install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

ECHO Installing apps

ECHO Configure chocolatey

choco feature enable -n allowGlobalConfirmation

choco install termius
choco install 7zip
choco install bleachbit
choco install choco-cleaner 
choco install chocolateygui
choco install kubens
choco install kubernetes-cli
choco install kubernetes-helm
choco install kubernetes-kompose
choco install speedtest
choco install brave
choco install starship
choco install vscode
choco install mysql.workbench
choco install jetbrainstoolbox
choco install git
choco install python
choco install signal
choco install discord
choco install spotify

choco feature disable -n allowGlobalConfirmation