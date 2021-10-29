Write-Host '=====> automatr <====='

# Windows Activation
$confirm00 = Read-Host 'Would you like to activate your version of Windows? (y/n)'
if($confirm00 -eq "y") {
    $id = [System.Security.Principal.WindowsIdentity]::GetCurrent()
    $p = New-Object System.Security.Principal.WindowsPrincipal($id)
    if ($p.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator)) {
        Start-Sleep -Seconds 3
        slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
        Start-Sleep -Seconds 5
        slmgr /skms kms8.msguides.com
        Start-Sleep -Seconds 5
        slmgr /ato
        Write-Host "==================================================================="
        Write-Host "> The OS was activated successfully."
        Write-Host "==================================================================="
    } else {
        Write-Host "==================================================================="
        Write-Host "> Please run the script as an Administrator to activate Windows."
        Write-Host "==================================================================="
    }
}

# Audacity
$confirm01 = Read-Host 'Do you wish to install Audacity on your computer? (y/n)'
if($confirm01 -eq "y") {
    winget install -e --id Audacity.Audacity
} else {
    Write-Host 'The installation for Audacity was aborted.'
}

# Blender
$confirm02 = Read-Host 'Do you wish to install Blender on your computer? (y/n)'
if($confirm02 -eq "y") {
    winget install -e --id BlenderFoundation.Blender
} else {
    Write-Host 'The installation for Blender was aborted.'
}

# Discord
$confirm03 = Read-Host 'Do you wish to install Discord on your computer? (y/n)'
if($confirm03 -eq "y") {
    winget install -e --id Discord.Discord
} else {
    Write-Host 'The installation for Discord was aborted.'
}

# GitHub
$confirm04 = Read-Host 'Do you wish to install Git & GitHub Desktop on your computer? (y/n)'
if($confirm04 -eq "y") {
    winget install -e --id Git.Git
    winget install -e --id GitHub.GitLFS
    winget install -e --id GitHub.GitHubDesktop
} else {
    Write-Host 'The installation for Git & GitHub Desktop was aborted.'
}

# Notepad
$confirm05 = Read-Host 'Do you wish to install Notepad++ on your computer? (y/n)'
if($confirm05 -eq "y") {
    winget install -e --id Notepad++.Notepad++
} else {
    Write-Host 'The installation for Notepad++ was aborted.'
}

# NodeJS
$confirm06 = Read-Host 'Do you wish to install NodeJS on your computer? (y/n)'
if($confirm06 -eq "y") {
    winget install -e --id OpenJS.NodeJS
} else {
    Write-Host 'The installation for NodeJS was aborted.'
}

# OBS
$confirm07 = Read-Host 'Do you wish to install OBS Studio on your computer? (y/n)'
if($confirm07 -eq "y") {
    winget install -e --id OBSProject.OBSStudio
} else {
    Write-Host 'The installation for OBS Studio was aborted.'
}

# qBittorrent
$confirm08 = Read-Host 'Do you wish to install qBittorrent on your computer? (y/n)'
if($confirm08 -eq "y") {
    winget install -e --id qBittorrent.qBittorrent
} else {
    Write-Host 'The installation for qBittorrent was aborted.'
}

# Parsec
$confirm09 = Read-Host 'Do you wish to install Parsec on your computer? (y/n)'
if($confirm09 -eq "y") {
    winget install -e --id Parsec.Parsec
} else {
    Write-Host 'The installation for Parsec was aborted.'
}

# Rainmeter
$confirm10 = Read-Host 'Do you wish to install Rainmeter on your computer? (y/n)'
if($confirm10 -eq "y") {
    winget install -e --id Rainmeter.Rainmeter
} else {
    Write-Host 'The installation for Rainmeter was aborted.'
}

# StartAllBack (for Windows 11)
if ([System.Environment]::OSVersion.Version.Build -ge 22000) {
    $confirm11 = Read-Host 'Do you wish to install StartAllBack on your computer? (y/n)'
    if($confirm11 -eq "y") {
        winget install startallback
    } else {
        Write-Host 'The installation for StartAllBack was aborted.'
    }
} else {
    Write-Host '==================================================================='
    Write-Host '> StartAllBack is not supported on your Operating System'
    Write-Host '> (Windows 11 build 22000.xx required)'
    Write-Host '==================================================================='
}

# VLC
$confirm12 = Read-Host 'Do you wish to install VLC on your computer? (y/n)'
if($confirm12 -eq "y") {
    winget install -e --id VideoLAN.VLC
} else {
    Write-Host 'The installation for VLC was aborted.'
}

Write-Host '==================================================================='
Write-Host '> "Thank you for running this script. Have a great day!" - whiteex'
Write-Host '==================================================================='
Pause