# Dotfiles  

This repository contains my configurations for WSL and macOS, designed to create efficient development environments for _practical minimalists_ like myself.  

![screenshot](./screenshot.png)

## Introduction  

I primarily use WSL as my main development environment.  

### Editor  

I rely on two editors: [Visual Studio Code](https://code.visualstudio.com/) and Neovim. These days, I do most of my coding in Neovim. However, for company projects, I use VS Code because it performs better with large codebases and offers superior GitHub integration, especially for reviewing pull requests. For Neovim, I use [LazyVim](https://lazyvim.org) with minimal customizations.  

I have uploaded my VS Code profile to this [gist](https://gist.github.com/wzhudev/578d871aa553e7c849be2924a67dc387).

### TUI Apps

For terminal emulators, I use Windows Terminal on Windows and [Ghostty](https://ghostty.org) on macOS. If Ghostty could provide the same experience on Windows as it does on macOS, I’d make the switch.  

I use Homebrew to manage packages on both WSL and macOS.  

Some of my preferred TUI apps include:  

- **mise**: For managing programming languages like JavaScript, Rust, and Golang  
- **gh** and **lazygit**: For Git workflows  
- **fzf**, **lazydocker**, **starship**, **tmux**, etc.  

### GUI Apps

I'll also introduce other GUI apps in platform-specific guides.  

## Setup (Windows & WSL)  

Follow the setup guides for [Windows](./platforms/windows/README.md) and [WSL](./platforms/linux/README.md).  

## Setup (macOS)  

Refer to the [macOS setup guide](./platforms/mac/README.md).  
