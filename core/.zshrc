# Load zshrc files from config directories.
for conf in ~/zsh/*.zshrc; do
	echo "Sourcing ${conf} ..."
	source "${conf}"
done
unset conf
