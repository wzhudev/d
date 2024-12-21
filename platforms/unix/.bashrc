# Shared configuration for Linux and macOS

alias ls='eza -lh --group-directories-first --icons'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias ff="fzf --preview 'batcat --style=numbers --color=always {}'"
alias fd="fdfind"
alias lg="lazygit"
alias n="nvim"
alias cd="z"
alias gfa="git fetch --all"
alias ld="lazydocker"

force_color_prompt=yes
color_prompt=yes

function proxy() {
  export ALL_PROXY="http://127.0.0.1:7890"
  export HTTPS_PROXY="http://127.0.0.1:7890"
  export HTTP_PROXY="http://127.0.0.1:7890"

  export all_proxy="http://127.0.0.1:7890"
  export https_proxy="http://127.0.0.1:7890"
  export http_proxy="http://127.0.0.1:7890"
}

function unproxy() {
  unset ALL_PROXY
  unset HTTPS_PROXY
  unset HTTP_PROXY

  unset all_proxy
  unset https_proxy
  unset http_proxy
}
