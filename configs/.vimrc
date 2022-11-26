" Library Installs
call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'dense-analysis/ale'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-fugitive'
call plug#end()

" Fix for slow typescript syntax highlighting
set re=0

" Other settings
set nocompatible
set relativenumber number

" Override default tab behavior
set noexpandtab
set tabstop=4
set shiftwidth=4

" Netrw settings
set nocp
filetype plugin on

" Bind fzf in vim to ctrl+f
nnoremap <silent> <C-f> :Files<CR>

" Bind ripgrep to Leader+f
" Leader is mapped to \ by default
nnoremap <silent> <Leader>f :Rg<CR>

" Remap ctrl+a to something else (conflict with tmux)
nnoremap <C-c> <C-a>
set nrformats+=alpha

" Override :grep to use ripgrep
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" Project Specific Paths
:set path+=/Users/p848332/Documents/Labs/research/01_d3

" highlight search
set hlsearch
set incsearch
nnoremap <esc><esc> :noh<return><esc>

" true colors
set termguicolors

" Case Insensitive Smart Searching
set ignorecase smartcase

" Theming
syntax on
colorscheme cobalt2

" Automatica undodir creation
set undodir=~/.vim/undo_dir
set undofile

" ALE Settings
let g:ale_linters = {
\	'python': ['flake8']
\}
let g:ale_fixers = {
\	'*': ['remove_trailing_lines', 'trim_whitespace'],
\	'javascript': ['prettier', 'eslint'],
\	'python': ['autoflake'],
\	'css': ['prettier'],
\ 	'html': ['prettier']
\}

let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1
let g:ale_completion_enabled = 1
