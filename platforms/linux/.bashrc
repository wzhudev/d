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

alias ls='eza -lh --group-directories-first --icons'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias ff="fzf --preview 'batcat --style=numbers --color=always {}'"
alias fd='fdfind'
alias lg='lazygit'

# Technicolor dreams
force_color_prompt=yes
color_prompt=yes

# Simple prompt with path in the window/pane title and caret for typing line
PS1=$'\uf0a9 '
PS1="\[\e]0;\w\a\]$PS1"
