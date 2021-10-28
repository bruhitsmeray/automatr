Write-Host "Welcome to the Automatiz-inator."
Write-Host "This script activates Windows & installs some software."

# Windows Activation
$id = [System.Security.Principal.WindowsIdentity]::GetCurrent()
$p = New-Object System.Security.Principal.WindowsPrincipal($id)
if ($p.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator)) {
    slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
    slmgr /skms kms8.msguides.com
    slmgr /ato
} else {
    Write-Host "Please run the script as an Administrator to activate Windows."
}

# Audacity
$confirm01 = Read-Host "Do you wish to install Audacity on your computer? (y/n)"
if($confirm01 -eq "y") {
    winget install Audacity.Audacity
}

# Blender
$confirm02 = Read-Host "Do you wish to install Blender on your computer? (y/n)"
if($confirm02 -eq "y") {
    winget install BlenderFoundation.Blender
}

# Discord
$confirm03 = Read-Host "Do you wish to install Discord on your computer? (y/n)"
if($confirm03 -eq "y") {
    winget install Discord.Discord
}

# GitHub
$confirm04 = Read-Host "Do you wish to install Git & GitHub Desktop on your computer? (y/n)"
if($confirm04 -eq "y") {
    winget install Git.Git
    winget install GitHub.GitLFS
    winget install GitHub.GitHubDesktop
}

# Notepad
$confirm05 = Read-Host "Do you wish to install Notepad++ on your computer? (y/n)"
if($confirm05 -eq "y") {
    winget install Notepad++.Notepad++
}

# NodeJS
$confirm06 = Read-Host "Do you wish to install NodeJS on your computer? (y/n)"
if($confirm06 -eq "y") {
    winget install OpenJS.NodeJS
}

# OBS
$confirm07 = Read-Host "Do you wish to install OBS Studio on your computer? (y/n)"
if($confirm07 -eq "y") {
    winget install OBSProject.OBSStudio
}

# Parsec
$confirm08 = Read-Host "Do you wish to install Parsec on your computer? (y/n)"
if($confirm08 -eq "y") {
    winget install Parsec.Parsec
}

# Rainmeter
$confirm09 = Read-Host "Do you wish to install Rainmeter on your computer? (y/n)"
if($confirm09 -eq "y") {
    winget install Rainmeter
}

# StartAllBack (for Windows 11)
if ([System.Environment]::OSVersion.Version.Build -ge 22000) {
    $confirm10 = Read-Host "Do you wish to install StartAllBack on your computer? (y/n)"
    if($confirm10 -eq "y") {
        winget install startallback
    }
}

# VLC
$confirm11 = Read-Host "Do you wish to install VLC on your computer? (y/n)"
if($confirm11 -eq "y") {
    winget install VideoLAN.VLC
}