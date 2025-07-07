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


## Keybinds

### Reload whkd configuration

| Keybind | Description |
|---|---|
| `alt + o` | taskkill /f /im whkd.exe; Start-Process whkd -WindowStyle hidden |
| `alt + shift + o` | komorebic reload-configuration |

### General

| Keybind | Description |
|---|---|
| `alt + i` | komorebic toggle-shortcuts |
| `alt + q` | komorebic close |
| `alt + m` | komorebic minimize |

### Focus windows

| Keybind | Description |
|---|---|
| `alt + left` | komorebic focus left |
| `alt + down` | komorebic focus down |
| `alt + up` | komorebic focus up |
| `alt + right` | komorebic focus right |
| `alt + shift + oem_4` | oem_4 is [ |
| `alt + shift + oem_6` | oem_6 is ] |

### Move windows

| Keybind | Description |
|---|---|
| `alt + shift + left` | komorebic move left |
| `alt + shift + down` | komorebic move down |
| `alt + shift + up` | komorebic move up |
| `alt + shift + right` | komorebic move right |

### Resize

| Keybind | Description |
|---|---|
| `alt + oem_plus` | komorebic resize-axis horizontal increase |
| `alt + oem_minus` | komorebic resize-axis horizontal decrease |
| `alt + shift + oem_plus` | komorebic resize-axis vertical increase |
| `alt + shift + oem_minus` | komorebic resize-axis vertical decrease |

### Manipulate windows

| Keybind | Description |
|---|---|
| `alt + t` | komorebic toggle-float |
| `alt + shift + f` | komorebic toggle-monocle |

### Window manager options

| Keybind | Description |
|---|---|
| `alt + shift + r` | komorebic retile |
| `alt + p` | komorebic toggle-pause |

### Layouts

| Keybind | Description |
|---|---|
| `alt + x` | komorebic flip-layout horizontal |
| `alt + y` | komorebic flip-layout vertical |

### Workspaces

| Keybind | Description |
|---|---|
| `alt + 1` | komorebic focus-workspace 0 |
| `alt + 2` | komorebic focus-workspace 1 |
| `alt + 3` | komorebic focus-workspace 2 |
| `alt + 4` | komorebic focus-workspace 3 |
| `alt + 5` | komorebic focus-workspace 4 |
| `alt + 6` | komorebic focus-workspace 5 |
| `alt + 7` | komorebic focus-workspace 6 |
| `alt + 8` | komorebic focus-workspace 7 |

### Move windows across workspaces

| Keybind | Description |
|---|---|
| `alt + shift + 1` | komorebic move-to-workspace 0 |
| `alt + shift + 2` | komorebic move-to-workspace 1 |
| `alt + shift + 3` | komorebic move-to-workspace 2 |
| `alt + shift + 4` | komorebic move-to-workspace 3 |
| `alt + shift + 5` | komorebic move-to-workspace 4 |
| `alt + shift + 6` | komorebic move-to-workspace 5 |
| `alt + shift + 7` | komorebic move-to-workspace 6 |
| `alt + shift + 8` | komorebic move-to-workspace 7 |