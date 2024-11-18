# macOS

Install applications with Homebrew:

```sh
brew install bash # the built-in bash is outdated that tmux cannot work properly
brew install --cask visual-studio-code raycast hammerspoon google-chrome alacritty
```

Link the config file of Hammerspoon:

```sh
ln -fs ~/.dotfiles/mac/hammerspoon/init.lua ~/.hammerspoon/init.lua
ln -fs ~/.dotfiles/mac/.alacritty.toml ~/.alacritty.toml
```
