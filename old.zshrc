# Set the below environment variable to direct to your dotfiles directory
export CONFIG_ROOT=~/dotfiles

# This sets neovim to look in your config directory - not ~/.config/nvim
export XDG_CONFIG_HOME=$CONFIG_ROOT

# Load zshrc files from config directories.
for conf in $CONFIG_ROOT/zsh/devices/*; do
	echo "Sourcing ${conf} ..."
	source "${conf}"
done
unset conf

# Exa Configuration
alias l="exa --long --header --all --icons"
export EXA_COLORS="da=1;34"

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc

# Initialize oh my posh
eval "$(oh-my-posh init zsh --config $CONFIG_ROOT/zsh/oh-my-posh.omp.json)"
