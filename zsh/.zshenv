# Update PATH for Rustup on macOS
if [[ $(uname) == "Darwin" ]]; then
    export PATH="/opt/homebrew/opt/rustup/bin:$PATH"
fi

export CLICOLOR=true

