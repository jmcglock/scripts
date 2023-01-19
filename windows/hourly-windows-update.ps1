# Set up variables for the task 
$taskName = "Hourly Update Check" 
$taskDescription = "Checks for updates every hour as an administrator" 
$taskCommand = "wuauclt.exe /detectnow" 
$taskStartTime = (Get-Date).Date.AddHours(1) 
# Create the scheduled task 
$action = New-ScheduledTaskAction -Execute "$taskCommand" 
$trigger = New-ScheduledTaskTrigger -Daily -At 1:00 
$principal = New-ScheduledTaskPrincipal -UserId "NT AUTHORITY\SYSTEM" -LogonType ServiceAccount 
$settings = New-ScheduledTaskSettingsSet 
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName $taskName ` 
                      -Description $taskDescription -Principal $principal -Settings $settings