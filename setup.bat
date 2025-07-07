@echo off
echo Starting the reinstallation of packages...
call reinstall_scoop_packages.bat
echo.
echo Copying configuration files...
copy /Y .vimrc %USERPROFILE%\.vimrc
copy /Y komorebi.json %USERPROFILE%\komorebi.json
xcopy /E /I /Y .config %USERPROFILE%\.config
copy /Y terminal\settings.json %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
echo Enabling Komorebi autostart
komorebic enable-autostart --whkd  
echo Initializing Komorebi
komorebic start 
echo Script finished.

