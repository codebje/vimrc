set nocompatible                " in case system vimrc is screwy

source $HOME/.vim/plug.vim

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
"set background=dark             " I use a black background terminal
set background=light
set nohlsearch                  " highlighting of searches is evil
set wildmenu
set relativenumber

colorscheme PaperColor
let &colorcolumn="120"
highlight ColorColumn ctermbg=235
highlight SpellBad ctermfg=217 ctermbg=0

" Theme for airline
let g:airline_theme='PaperColor'

" Syntastic checker settings
let g:syntastic_haskell_checkers=['hlint', 'hdevtools']
let g:syntastic_c_checkers = ['make', 'gcc']
let g:syntastic_java_checkers = ['checkstyle']
let g:syntastic_javascript_checkers = ['eslint', 'jshint']
let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_check_on_wq = 0

" Haskell editing
map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

" Pandoc editing settings
let g:pandoc#formatting#mode="haA"
let g:pandoc#modules#disabled = ["folding"]

" vimwiki
let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki/'}]

let mapleader=","
let maplocalleader=","

syntax on
filetype plugin indent on
