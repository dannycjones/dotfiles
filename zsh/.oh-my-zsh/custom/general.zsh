if ! type "$nvim" > /dev/null; then
	alias nv='nvim'
fi

if ! type "$tree" > /dev/null; then
	alias tree='tree -aI ".git|vendor|node_modules"'
fi

