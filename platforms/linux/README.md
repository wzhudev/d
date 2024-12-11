# Linux (& WSL) Setup

## Install CLI Applications

* [gh](https://github.com/cli/cli#installation)
* [lazygit](https://github.com/jesseduffield/lazygit)
* [mise](https://github.com/jdx/mise)
* [zellij](https://github.com/basecamp/omakub/blob/90e0febcb9e1067aa336a5ca91e2665471fa068a/install/terminal/app-zellij.sh#L8) first 6 lines

Some applications can be installed via Ubuntu package manager:

```bash
sudo apt update
sudo apt install zoxide eza fzf
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
