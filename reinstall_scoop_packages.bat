@echo off
echo Installing git...
scoop install git

echo Adding buckets...
scoop bucket add extras
scoop bucket add versions
scoop bucket add java

echo Installing packages...
scoop install 7zip 7zip19.00-helper docker docker-compose fastfetch fzf gimp googlechrome gradle innounp komorebi maven3 openjdk17 postgresql qutebrowser sharex vim vscode whkd winrar
winget install -e --id ZeroTier.ZeroTier-One 
