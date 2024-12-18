source ~/.dotfiles/platforms/unix/.bashrc

# Activate Homebrew first because most CLI apps are installed via Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

if command -v fzf &>/dev/null; then
  if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
    PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
  fi

  [[ $- == *i* ]] && source "/opt/homebrew/opt/fzf/shell/completion.bash" 2>/dev/null
  source "/opt/homebrew/opt/fzf/shell/key-bindings.bash"
fi

if command -v zoxide &>/dev/null; then
  eval "$(zoxide init bash)"
fi

if command -v mise &>/dev/null; then
  eval "$(/opt/homebrew/bin/mise activate bash)"
fi

eval "$(starship init bash)"
