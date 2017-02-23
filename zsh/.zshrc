# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Hides username when logged in as danny on localhost
DEFAULT_USER="danny"
if [[ "$OSTYPE" == "linux-gnu" ]]; then
        # do nothing for now
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
	# Chruby stuff
	source /usr/local/opt/chruby/share/chruby/chruby.sh
	source /usr/local/share/chruby/auto.sh
	export PATH="$HOME/Library/Haskell/bin:$PATH" # For cabal installs
fi

