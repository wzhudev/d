###
# Shared configuration for Linux and macOS
###

alias ls='eza -lh --group-directories-first --icons'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias ff="fzf --preview 'batcat --style=numbers --color=always {}'"
alias fd='fdfind'
alias lg='lazygit'

alias gfa="git fetch --all"

force_color_prompt=yes
color_prompt=yes

# Simple prompt with path in the window/pane title and caret for typing line
PS1=$'\uf0a9 '
PS1="\[\e]0;\w\a\]$PS1"

function proxy() {
  export ALL_PROXY="http://127.0.0.1:7890" ; export HTTPS_PROXY="http://127.0.0.1:7890" ; export HTTP_PROXY="http://127.0.0.1:7890"
}

function unproxy() {
  unset ALL_PROXY ; unset HTTPS_PROXY ; unset HTTP_RPOXY
}
