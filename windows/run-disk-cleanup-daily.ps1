# Define the Disk Cleanup command
$command = "Cleanmgr.exe /sagerun:1"

# Create a schedule for the Disk Cleanup command
$schedule = New-JobTrigger -Once -At (Get-Date) -RepetitionInterval (New-TimeSpan -Hours 1)

# Register the scheduled job
Register-ScheduledJob -Name "Disk Cleanup" -ScriptBlock {Invoke-Expression $args[0]} -ArgumentList $command -Trigger $schedule

#Start the scheduled job
Start-Job -Name "Disk Cleanup"