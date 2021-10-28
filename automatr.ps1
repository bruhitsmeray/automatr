Write-Host "Welcome to the Automatiz-inator"
Write-Host "This script activates Windows & installs essential software for Productivity"

# Windows Activation
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr /skms kms8.msguides.com
slmgr /ato

# Audacity
winget install Audacity.Audacity

# Blender
winget install BlenderFoundation.Blender

# Discord
winget install Discord.Discord

# GitHub
winget install Git.Git
winget install GitHub.GitLFS
winget install GitHub.GitHubDesktop

# Notepad
winget install Notepad++.Notepad++

# NodeJS
winget install OpenJS.NodeJS

# OBS
winget install OBSProject.OBSStudio

# Parsec
winget install Parsec.Parsec

# Rainmeter
winget install Rainmeter

# VLC
winget install VideoLAN.VLC