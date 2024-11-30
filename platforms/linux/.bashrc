# Setup bashrc
if command -v fzf &> /dev/null; then
  source /usr/share/bash-completion/completions/fzf
  source /usr/share/doc/fzf/examples/key-bindings.bash # For command line history
fi

# Setup mise
eval "$(/home/wzhudev/.local/bin/mise activate bash)"

# Zoxide
if command -v zoxide&> /dev/null; then
    eval "$(zoxide init bash)"
fi

source ~/.dotfiles/platforms/unix/.bashrc
