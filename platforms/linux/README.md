# Linux (& WSL) Setup

## Install CLI applications

* [gh](https://github.com/cli/cli#installation) for GitHub
* [lazygit](https://github.com/jesseduffield/lazygit) for Git
* [mise](https://github.com/jdx/mise) to manager dev environments for multi languages
* [zellij](https://github.com/basecamp/omakub/blob/90e0febcb9e1067aa336a5ca91e2665471fa068a/install/terminal/app-zellij.sh#L8) first 6 lines
* [neovim](https://github.com/basecamp/omakub/blob/90e0febcb9e1067aa336a5ca91e2665471fa068a/install/terminal/app-neovim.sh) first 8 lines

```bash
sudo apt update
sudo apt install bat zoxide eza
```

## Configuration

### Download dotfiles and link

Clone the project and link configuration files:

```sh
# download dotfiles
git clone https://github.com/wzhudev/d.git .dotfiles
```

Copy configuration files

```sh
cp ~/.dotfiles/.gitconfig ~/.gitconfig
cp ~/.dotfiles/config/ssh ~/.ssh/config
```

Source my own .bashrc files

```sh
echo "source ~/.dotfiles/platforms/linux/.bashrc" >> ~/.bashrc
```

### Unsync

Put things under folder .unsync if I do not want to sync it across my devices. Use `unsync/init.sh` as the entrance file name.

### Miscellaneous

Run the following command to set proxy if necessary.

```sh
export ALL_PROXY="http://127.0.0.1:7890" ; export HTTPS_PROXY="http://127.0.0.1:7890" ; export HTTP_PROXY="http://127.0.0.1:7890"
```
