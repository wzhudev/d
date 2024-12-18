# Linux (& WSL) Setup

## Install CLI Applications

Install the following applications manually:

* [gh](https://github.com/cli/cli#installation)
* [lazygit](https://github.com/jesseduffield/lazygit)
* [mise](https://github.com/jdx/mise)
* [nvim](https://github.com/basecamp/omakub/blob/90e0febcb9e1067aa336a5ca91e2665471fa068a/install/terminal/app-neovim.sh)
* [starship](https://starship.rs/)
* [zellij](https://github.com/basecamp/omakub/blob/90e0febcb9e1067aa336a5ca91e2665471fa068a/install/terminal/app-zellij.sh#L8)

Some applications can be installed via Ubuntu package manager:

```bash
sudo apt update
sudo apt install zoxide eza fzf tldr git-delta
```

## Configuration

### Download dotfiles and link

Clone the project:

```sh
git clone https://github.com/wzhudev/d.git .dotfiles
```

Copy configuration files:

```sh
cp ~/.dotfiles/.gitconfig ~/.gitconfig
cp ~/.dotfiles/config/ssh ~/.ssh/config

ln -fs ~/.dotfiles/nvim ~/.config/nvim
ln -fs ~/.dotfiles/config/starship/starship.toml ~/.config/starship.toml
```

Source my own .bashrc files:

```sh
echo "source ~/.dotfiles/platforms/linux/.bashrc" >> ~/.bashrc
```

### Unsync

Put things under folder .unsync if I do not want to sync it across my devices. Use `unsync/init.sh` as the entrance file name.

## Miscellaneous

Run the following command to set proxy if necessary.

```sh
export ALL_PROXY="http://127.0.0.1:7890" ; export HTTPS_PROXY="http://127.0.0.1:7890" ; export HTTP_PROXY="http://127.0.0.1:7890"
```
