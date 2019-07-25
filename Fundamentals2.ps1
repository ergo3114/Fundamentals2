return "Do not run this as is. This is for testing purposes only."

############
# Prestage #
############

Remove-Item "C:\Temp\Fundamentals2\" -ErrorAction SilentlyContinue
Stop-Service BITS -ErrorAction SilentlyContinue

############
# Homework #
############

Clear-Host

# Homework example 1
# Open Notepad
Start-Process notepad

# Homework example 2
# Get status of notepad
Get-Process notepad
Get-Process -Name Notepad

# Homework example 3
# Close Notepad
# Who did this?
Stop-Process notepad

# Homework example 3
# Close Notepad
Get-Process notepad | Stop-Process

# What happens if you opened multiple Notepads
# Then tried to close them?
Start-Process notepad
Start-Process notepad
Start-Process notepad
Get-Process notepad
Get-Process notepad | Stop-Process

############
# Pipeline #
############

Clear-Host

# Treat the pipeline as a simple queue
# All items before the pipe are completed
# Then for each of the items completed
# the pipe handles them

# Get the Name of all processes
Get-Process | Select-Object ProcessName

# Get the Id of all processes
Get-Process | Select-Object Id

# Get the Id and Name of all processes
Get-Process | Select-Object Id, ProcessName

##################
# Basic Commands #
##################

Clear-Host

# We can manipulate processes
# We performed a few of these commands for the homework
Get-Process svchost

# We can manipulate services
Get-Service BITS
Start-Service BITS

# We can manipulate files and Directories
New-Item -Path "C:\Temp\Fundamentals2\" -ItemType Directory
New-Item -Path "C:\temp\Fundamentals2\HelloWorld.txt" -ItemType File
Set-Content -Value "Hello World`nHello Clarice!" -Path "C:\temp\Fundamentals2\HelloWorld.txt"
Get-Content -Path "C:\temp\Fundamentals2\HelloWorld.txt"

# We can work with network commands
# Advised to have PowerShell v5+
# as some commands will not function in lower versions

# Ping equivelant
Test-Connection www.google.com

# Get network interfaces
Get-NetAdapter

# Get the first firewall rule on computer
Get-NetFirewallRule | Select-Object -First 1

# ipconfig equivelant
Get-NetIPAddress