# Set the below environment variable to direct to your dotfiles directory
export CONFIG_ROOT=~/dotfiles_2

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

# Bat theming
export BAT_THEME="gruvbox-dark"

# Set up Starship
eval "$(starship init zsh)"
