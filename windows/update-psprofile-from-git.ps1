# Set the URL of the GitHub repository and file 
$repository = "https://github.com/username/repository" 
$file = "profile.ps1" 
# Set the local path where the profile file will be saved 
$localPath = "$env:USERPROFILE\Documents\WindowsPowerShell" 
# Download the profile file from GitHub 
Invoke-WebRequest -Uri "https://$repository/$file" -OutFile "$localPath\$file" 
# Update the PowerShell profile 
$profile = "$localPath\$file" 
. $profile