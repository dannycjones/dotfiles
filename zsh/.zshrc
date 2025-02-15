eval "$(starship init zsh)"

attach() {
    ssh -t $1 "tmux -u -2 -CC new-session -A -s default-session"
}

if [[ $(uname) == "Darwin" ]]; then
    source <(fzf --zsh)
else
    # Some distributions don't include the new fzf init script (added v0.48.0+), handle it the old way
    source /usr/share/doc/fzf/examples/key-bindings.zsh
    source /usr/share/doc/fzf/examples/completion.zsh
fi

if [[ $(uname) == "Darwin" ]]; then
    source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
fi

