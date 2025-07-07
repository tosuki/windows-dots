
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Warning "This script requires administrative privileges to install Oh My Posh modules. Please run PowerShell as an administrator."
    exit 1
}

Write-Host "Installing Oh My Posh..."

Try {
    winget install JanDeDobbeleer.OhMyPosh -s winget
    Write-Host "Oh My Posh installed successfully."
} Catch {
    Write-Error "Failed to install Oh My Posh: $($_.Exception.Message)"
    exit 1
}

Write-Host "Configuring Oh My Posh in PowerShell profile..."

Write-Host "Creating PowerShell profile"
New-Item -Path $profile -Type File -Force
wget https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/jandedobbeleer.omp.json -O $HOME\Documents\WindowsPowerShell\jandedobbeleer.omp.json
Add-Content -Path "$HOME/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1" 'oh-my-posh init pwsh --config $HOME\Documents\WindowsPowerShell\jandedobbeleer.omp.json | Invoke-Expression'

