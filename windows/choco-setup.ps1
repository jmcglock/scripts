#install Chocolatey 
$apps = @("termius","7zip","bleachbit","choco-cleaner","chocolateygui","kubens","kubernetes-cli","kubernetes-helm","brave","starship","vscode","mysql.workbench","jetbrainstoolbox","git","python","signal","discord","spotify")
 Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) 
ECHO Installing apps 
ECHO Configure chocolatey 
choco feature enable -n allowGlobalConfirmation 
 Function Install-Chocolatey {
    Param ($app)
    choco install $app
}
 foreach ($app in $apps) {
    Install-Chocolatey $app
}
 choco feature disable -n allowGlobalConfirmation