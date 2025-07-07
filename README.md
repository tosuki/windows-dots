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
6. Learn komorebi shortcuts, press `Alt+i` to see the shortcuts. Komorebi is a tiling window manager for Windows that allows you to manage your windows efficiently. You can find more information about Komorebi [here](



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
