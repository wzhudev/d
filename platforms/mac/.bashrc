source ~/.dotfiles/platforms/unix/.bashrc

if command -v mise &> /dev/null; then
    eval "$(/opt/homebrew/bin/mise activate bash)"
fi

if command -v zoxide&> /dev/null; then
    eval "$(zoxide init bash)"
fi

if command -v fzf &> /dev/null; then
    if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
    PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
    fi

    [[ $- == *i* ]] && source "/opt/homebrew/opt/fzf/shell/completion.bash" 2> /dev/null
    source "/opt/homebrew/opt/fzf/shell/key-bindings.bash"
fi
