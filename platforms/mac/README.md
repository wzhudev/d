# macOS

## Install Applications

Install Homebrew:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install applications with Homebrew:

```sh
brew install fzf git lazygit cloc tree gh neofetch zellij starship bash
brew install visual-studio-code raycast hammerspoon microsoft-edge alacritty
```

## Configuration

Checkout "Configuration" section in [linux/README.md](../linux/README.md).

Link the config file of Hammerspoon:

```sh
ln -fs ~/.dotfiles/platforms/mac/hammerspoon/init.lua ~/.hammerspoon/init.lua
ln -fs ~/.dotfiles/platforms/mac/alacritty/.alacritty.toml ~/.alacritty.toml
```
