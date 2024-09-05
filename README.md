# dotfiles

![](./img/editor.png)

An efficient and beautiful development environment setup for practical minimalists.

* Editors: VSCode & VSCodeVim, neovim & LazyVim
* Languages: Node.js (based on fnm), Rust, Go
* Terminal Multiplexer: tmux (with batteries)
* TUI: lazygit, fzf, tmux, some personal choices :)

## Setup

Run the following command in your home directory.

```sh
cd $HOME
```

### Install zsh and plugins

Install oh-my-zsh and plugins.

```sh
# perhaps should install zsh first on Linux
# WSL
sudo apt install zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### Install homebrew and dependencies

Install Homebrew:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install packages with Homebrew:

```sh
# install TUI applications
brew install fzf fnm rustup-init git go lazygit tmux neovim ripgrep fd cloc tree bat gh starship btop bat
```

### Download dotfiles and link

Clone the project and link configuration files:

```sh
# download dotfiles
git clone https://github.com/wzhudev/d.git .dotfiles

# make config dir if necessary
mkdir .config

# link dotfiles
ln -fs ~/.dotfiles/.zshrc ~/.zshrc
ln -fs ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -fs ~/.dotfiles/config/nvim ~/.config/nvim
ln -fs ~/.dotfiles/config/starship.toml ~/.config/starship.toml

cp .dotfiles/.gitconfig.bak .gitconfig

source ~/.zshrc
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

### Setup Node.js

Run `fnm env` and paste the outcomes to `./dotfiles/unsync/init.sh` to set Node.js environment.

### Per-platform

Read the following instructions for your platform:

* [README-windows.md](./README-windows.md) for Windows & WSL.
* [README-mac.md](./README-mac.md) for macOS.

## Unsync

Put things under folder .unsync if I do not want to sync it across my devices. Use `unsync/init.sh` as the entrance file name.

## Miscellaneous

Run the following command to set proxy if necessary.

```sh
# macOS
export ALL_PROXY="http://127.0.0.1:7890"
export HTTPS_PROXY="http://127.0.0.1:7890"
export HTTP_PROXY="http://127.0.0.1:7890"

# WSL
host_ip=$(cat /etc/resolv.conf | grep "nameserver" | cut -f 2 -d " ")
export ALL_PROXY="http://$host_ip:7890"
export HTTP_PROXY="http://$host_ip:7890"
export HTTPS_PROXY="http://$host_ip:7890"
```
