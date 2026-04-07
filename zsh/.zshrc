cmd_installed() { command -v "$1" &>/dev/null }
is_macos() { [[ $(uname) == "Darwin" ]] }

if cmd_installed starship; then eval "$(starship init zsh)"; else echo "[warn] starship not found, skipping prompt init" >&2; fi
cmd_installed atuin && eval "$(atuin init zsh --disable-up-arrow)"
cmd_installed direnv && eval "$(direnv hook zsh)"

attach() {
    ssh -t $1 "tmux -u -2 -CC new-session -A -s default-session"
}

if cmd_installed fzf; then
    if ! is_macos; then
        # Some distributions don't include the new fzf init script (added v0.48.0+), handle it the old way
        source /usr/share/doc/fzf/examples/key-bindings.zsh
        source /usr/share/doc/fzf/examples/completion.zsh
    fi
fi

if is_macos; then
    source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

if cmd_installed asdf; then
    export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
fi

