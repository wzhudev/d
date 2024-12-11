source ~/.dotfiles/platforms/unix/.bashrc

if command -v fzf &>/dev/null; then
  source /usr/share/bash-completion/completions/fzf
  source /usr/share/doc/fzf/examples/key-bindings.bash
fi

if command -v zoxide &>/dev/null; then
  eval "$(zoxide init bash)"
fi

# The following utils are not instead by apt so we
# should add them to the PATH.

eval "$(~/.local/bin/mise activate bash)"

alias bat="batcat"
