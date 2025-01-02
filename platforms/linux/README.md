# WSL Setup  

## Install Homebrew(Linuxbrew)

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install TUI Applications  

Use Homebrew to install the required terminal applications:  

```bash  
brew install zoxide eza fzf gh lazygit lazydocker nvim mise starship tree cloc neofetch
```  

## Configuration  

### Clone Dotfiles and Link  

Clone your dotfiles repository:  

```bash  
git clone https://github.com/wzhudev/d.git .dotfiles  
```  

Copy and link configuration files:  

```bash  
cp ~/.dotfiles/.gitconfig ~/.gitconfig  
cp ~/.dotfiles/config/ssh ~/.ssh/config  

ln -fs ~/.dotfiles/nvim ~/.config/nvim  
ln -fs ~/.dotfiles/config/starship/starship.toml ~/.config/starship.toml  
ln -fs ~/.dotfiles/config/tmux/.tmux.conf ~/.tmux.conf  
```  

### Update `.bashrc`  

Add your custom `.bashrc` configuration by sourcing it:  

```bash  
echo "source ~/.dotfiles/platforms/linux/.bashrc" >> ~/.bashrc  
```  

## Miscellaneous  

If a proxy is required, use the following command to set it up:  

```bash  
export ALL_PROXY="http://127.0.0.1:7890"  
export HTTPS_PROXY="http://127.0.0.1:7890"  
export HTTP_PROXY="http://127.0.0.1:7890"  
```  

