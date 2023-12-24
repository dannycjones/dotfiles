eval "$(starship init zsh)"

attach() {
    ssh -t $1 "tmux -u -2 -CC new-session -A -s default-session"
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
