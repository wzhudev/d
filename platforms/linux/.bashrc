source ~/.dotfiles/platforms/unix/.bashrc

if command -v fzf &> /dev/null; then
  source /usr/share/bash-completion/completions/fzf
  source /usr/share/doc/fzf/examples/key-bindings.bash 
fi

if command -v mise &> /dev/null; then
  eval "$(/home/wzhudev/.local/bin/mise activate bash)"
fi

if command -v zoxide&> /dev/null; then
    eval "$(zoxide init bash)"
fi
