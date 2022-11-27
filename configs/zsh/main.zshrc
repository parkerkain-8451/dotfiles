# Aliases - shortcuts
alias ll="ls -alh"

# Allow FZF to see hidden files
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --hidden'
  export FZF_DEFAULT_OPTS='-m'
fi
