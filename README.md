# Dots

A bunch of scripts and configurations to make windows at least decent for programming.

## Recommendations
1. I strongly recommend using AtlasOS as your operating system. It is a Windows distribution that comes with much less bloatware than the official Windows distribution, and it is optimized for performance.
2. Instead of installing the applications on global path, install in your home directory. This way, you won't polute your path with unnecessary applications, and you can easily manage your applications without needing admin rights. Also, you can easily uninstall all your applications by recreating your user in windows, instead of reseting the whole system.
3. Use Scoop or winget to manage your applications. Scoop is a command-line installer for Windows that allows you to install and manage applications easily. It is similar to Homebrew on macOS or apt on Linux. You can find more information about Scoop [here](https://scoop.sh/).
4. Use Windows Terminal as your terminal emulator. It is a modern terminal application that supports multiple tabs, split panes, and various shells like PowerShell, Command Prompt, and WSL (Windows Subsystem for Linux). You can find more information about Windows Terminal [here](https://aka.ms/terminal).
5. Use Vim as your text editor. It is a powerful and efficient text editor that is widely used by programmers. You can find more information about Vim [here](https://www.vim.org/).
    * If you are new to Vim, I recommend using the [Vim Adventures](https://vim-adventures.com/) game to learn the basics of Vim in a fun way.
    * With Vim, you can code from a ssh session easily, and you can use it in any terminal emulator, including Windows Terminal.
6. Learn komorebi shortcuts, press `Alt+i` to see the shortcuts. Komorebi is a tiling window manager for Windows that allows you to manage your windows efficiently. You can find more information about Komorebi [here](https://lgug2z.github.io/komorebi/).
7. Avoid running docker containers on local machine without WSL or VM. Docker is a powerful tool for running applications in containers, but it is not recommended to run it directly on Windows without WSL (Windows Subsystem for Linux) or a virtual machine. This is because Docker requires a Linux kernel to run, and running it directly on Windows can lead to performance issues and compatibility problems. Instead, use WSL or a VM to run Docker containers.
8. Use WSL (Windows Subsystem for Linux) for running Linux applications on Windows. WSL allows you to run a Linux distribution alongside your Windows installation, providing a seamless experience for running Linux applications. You can find more information about WSL [here](https://docs.microsoft.com/en-us/windows/wsl/).

This is all, have fun with your new setup!


## Usage

1. Clone this repository.
2. Run the `setup.bat` script to install the packages and copy the configuration files.

## What this script does

The `setup.bat` script automates the following tasks:

- Reinstalls all your packages using the `reinstall_scoop_packages.bat` script.
- Copies the `.vimrc` file to your home directory.
- Copies the `komorebi.json` file to your home directory.
- Copies the `.config` directory to your home directory.
- Copies the `settings.json` file to the Windows Terminal configuration folder.

## Configuration files

This repository contains the following configuration files:

- `.vimrc`: Configuration for the Vim editor.
- `komorebi.json`: Configuration for the Komorebi tiling window manager.
- `.config`: Contains various configurations for different applications.
- `terminal/settings.json`: Configuration for the Windows Terminal.

## OpenSSH Setup

This repository includes a PowerShell script (`install_openssh.ps1`) to automate the installation and configuration of OpenSSH on Windows 11.

**Important:** This script should be run *after* you have set up your Scoop packages and configuration files, as it relies on a stable environment.

To run the script:

1. Open PowerShell as an **Administrator**.
2. Navigate to the directory where you cloned this repository.
3. Execute the script:
   ```powershell
   .\install_openssh.ps1
   ```

This script will:
- Check if OpenSSH Server and Client are installed and install them if not.
- Configure the `sshd` service to start automatically.
- Start the `sshd` service.
- Configure Windows Firewall to allow incoming connections on port 22 for OpenSSH.

## Oh My Posh Setup

This repository includes a PowerShell script (`install_oh_my_posh.ps1`) to automate the installation and configuration of Oh My Posh, a custom prompt engine for your terminal.

**Important:** This script should be run *after* you have set up your Scoop packages and configuration files, as it relies on a stable environment.

To run the script:

1. Open PowerShell as an **Administrator**.
2. Navigate to the directory where you cloned this repository.
3. Execute the script:
   ```powershell
   .\install_oh_my_posh.ps1
   ```

This script will:
- Install Oh My Posh.
- Configure your PowerShell profile to use a custom Oh My Posh theme.
