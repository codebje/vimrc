set nocompatible                " in case system vimrc is screwy
set nobackup                    " turn off backup files
set incsearch                   " match incrementally as search goes
set wrapmargin=0                " default is no-wrap
set nowrap                      " long lines go off the screen
set backspace=indent,eol        " backspace over indents and eols, but not start of edit
set timeoutlen=500              " 500ms to type subsequent characters in a command

" Indenting defaults, may be overridden per filetype in ftplugin/<language>.vim
set shiftwidth=4                " default indent is 4 characters
set shiftround                  " round to shiftwidth for > and < commands
set expandtab                   " \t is evil, see
set autoindent                  " generally, I prefer this
set smarttab                    " use shiftwidth, not tabstop

" Show tabs, trailing spaces, and blank lines with spaces; indicate non-wrapped lines
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅,extends:⤳,precedes:⬿

" Display settings
set laststatus=2
set background=dark             " I use a black background terminal
set nohlsearch                  " highlighting of searches is evil
set wildmenu

" Configure variables before plugins load
let g:airline_theme='wombat'
let g:syntastic_haskell_checkers=['hlint', 'hdevtools']
" let g:syntastic_haskell_hdevtools_args='-g -ilib -g -Wall'
let mapleader=","
let maplocalleader=","

" Load Pathogen for magic loading of everything else
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on
filetype plugin on
