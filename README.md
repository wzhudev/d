# dotfiles

An efficient development environment for _practical minimalists_. Read about [Tools](https://wzhu.dev/tools).

* Editors: VSCode (VSCodeVim) and vim
* Languages: Node.js (based on fnm), Rust, Go
* TUI tools: homebrew, fzf, lazygit, gh

## Setup

Run the following command in your home directory.

```sh
cd $HOME
```

### Install homebrew and dependencies

Install Homebrew:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install packages with Homebrew:

```sh
# install TUI applications
brew install fzf git lazygit cloc tree gh neofetch tmux neovim ripgrep fd
```

### Download dotfiles and link

Clone the project and link configuration files:

```sh
# download dotfiles
git clone https://github.com/wzhudev/d.git .dotfiles

# make config dir if necessary
mkdir .config

# link dotfiles
cp ~/.dotfiles/.gitconfig .gitconfig
```

## Post setup

### SSH

Generate a ssh key and add the pub key to GitHub:

```sh
# generate ssh-key
ssh-keygen

# get pub key
cat ~/.ssh/id_rsa.pub
```

Add then paste content of `./config/ssh` to `~/.ssh/config`:

```sh
cp ~/.dotfiles/config/ssh ~/.ssh/config
```

### Setup Node.js

Run `fnm env` and paste the outcomes to `./dotfiles/unsync/init.sh` to set Node.js environment.

## Unsync

Put things under folder .unsync if I do not want to sync it across my devices. Use `unsync/init.sh` as the entrance file name.

## Windows

- WSL2
  - Put [.wslconfig](./windows/.wslconfig) under user home directory, referring to this [documentation](https://github.com/microsoft/WSL/issues/10753#issuecomment-1814839310).
- AutoHotKey
  - Download [AutoHotKey](https://www.autohotkey.com/) V2.
  - Compile [AutoHotKey scripts](./windows/wzhudev.ahk) and put the executable in the startup folder at C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup .

## macOS

Install applications with Homebrew:

```sh
brew install visual-studio-code raycast hammerspoon google-chrome
```

Link the config file of Hammerspoon:

```sh
ln -fs ~/.dotfiles/platforms/mac/hammerspoon/init.lua ~/.hammerspoon/init.lua
```

## Ubuntu

## Miscellaneous

Run the following command to set proxy if necessary.

```sh
export ALL_PROXY="http://127.0.0.1:7890"
export HTTPS_PROXY="http://127.0.0.1:7890"
export HTTP_PROXY="http://127.0.0.1:7890"
```
