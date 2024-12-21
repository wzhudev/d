# Linux (& WSL) Setup

## Install CLI Applications

Install applications with Homebrew:

```bash
brew install zoxide eza fzf tldr git-delta gh lazygit lazydocker nvim mise starship zellij tree cloc neofetch
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
