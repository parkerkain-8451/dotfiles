# Aliases - shortcuts
alias ll="ls -alh"
alias dotfiles="cd ~/dotfiles"

# Open the crossword
crossword(){
        day=$(date +%d)
        month=$(date +%m)
        year=$(date +%Y)
        open https://www.nytimes.com/crosswords/game/daily/$year/$month/$day
        open https://www.nytimes.com/puzzles/stats
        open https://www.nytimes.com/games/wordle/index.html
        open https://guessthe.game/
        open https://guessthe.audio/
        open https://worldle.teuteuf.fr/
        open https://oec.world/en/tradle/
        open https://maps.google.com
}

# Alias lazygit
alias lg='lazygit'

# Allow FZF to see hidden files
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --hidden'
  export FZF_DEFAULT_OPTS='-m'
fi

# Alias NB for my todo list (in a todos folder)
alias todo="nb todo open todos:"

# Alias for taskwarrior tui
alias tt="taskwarrior-tui"
