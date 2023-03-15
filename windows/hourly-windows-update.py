import datetime
import subprocess

# Set up variables for the task 
taskName = "Hourly Update Check" 
taskDescription = "Checks for updates every hour as an administrator" 
taskCommand = "wuauclt.exe /detectnow"
    
# Get the current time and add one hour
currentTime = datetime.datetime.now()
nextHourTime = currentTime + datetime.timedelta(hours=1)

# Create the command and execute it every hour
while nextHourTime > datetime.datetime.now():
    time.sleep(nextHourTime - datetime.datetime.now())
    subprocess.run(taskCommand)
    nextHourTime = datetime.datetime.now() + datetime.timedelta(hours=1)