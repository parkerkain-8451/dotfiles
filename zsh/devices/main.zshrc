# Aliases - shortcuts
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
        open https://guesstheaudio.com/
        open https://worldle.teuteuf.fr/
        open https://oec.world/en/tradle/
        open https://maps.google.com
}

# Alias lazygit
alias lg='lazygit'

# ripgrep overriding standard grep
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
  export FZF_DEFAULT_OPTS='-m' 
fi

# Alias for taskwarrior tui
alias tt="taskwarrior-tui"
