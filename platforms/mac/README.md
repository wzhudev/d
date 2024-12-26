# macOS

## Install Applications

Install Homebrew:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install applications with Homebrew:

```sh
brew install git bash
brew install visual-studio-code raycast hammerspoon google-chrome ghostty
brew install --cask docker
```

## Configuration

Checkout "Configuration" section in [linux/README.md](../linux/README.md).

Link the config file of Hammerspoon:

```sh
ln -fs ~/.dotfiles/platforms/mac/hammerspoon/init.lua ~/.hammerspoon/init.lua
ln -fs ~/.dotfiles/config/ghostty/config ~/.config/ghostty/config
```
