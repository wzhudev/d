# dotfiles

This repository contains my configurations for WSL and macOS, to build efficient development environments for _practical minimalists_ like me.

![screenshot](./screenshot.png)

## Introduction

I like to use WSL as my primary dev environment.

### Editors

I use two editors, Visual Studio Code and Neovim. Nowadays I primarily code on Neovim, but for projects of the company I work for, I use VS Code because it provides better performance for projects with large codebases and better GitHub integration (especially for reviewing pull requests). For Neovim, I use [LazyVim](https://lazyvim.org) with little customizations.

### TUI

For terminal emulators, I use Windows Terminal on Windows and [Ghostty](https://ghostty.org) on macOS. I would definitely switch to Ghostty on Windows if it can provide the same experience I have with it on macOS.

I use Homebrew to manage packages both for WSL and macOS.

Some TUI apps I use include:

- mise, to manage programming languages: JavaScript, Rust and Golang
- gh, lazygit, to work with Git
- fzf, lazydocker, starship, tmux etc.

### GUI

I will also introduction other GUI apps in guidances for different platforms.

## Setup (Windows & WSL)

Please follow the guidance: [Windows](./platforms/windows/README.md) & [WSL](./platforms/linux/README.md).

## Setup (macOS)

Please follow the guidance: [macOS](./platforms/mac/README.md).

