set autoindent
set background=dark
set nobackup
set backspace=1
set cmdheight=1
set shiftwidth=4
set smarttab
set wrapmargin=0
set incsearch
set nocompatible
set expandtab

" Load Pathogen for magic loading of everything else
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on

augroup exrc
  au!

  autocmd BufReadPost   *.txt   set wrapmargin=10
  autocmd BufReadPost	*.tmpl	source ~/.vim/tmpl.vim
  autocmd BufRead       *       set formatoptions=tcq nocindent
  autocmd BufRead       *       set comments& noshowmatch
  autocmd BufRead       *.c,*.h set formatoptions=croq cindent shiftwidth=4
  autocmd BufRead       *.c,*.h set comments=sr:/*,mb:*,el:*/ showmatch
  autocmd BufRead       *.c	set foldmethod=syntax nofoldenable
  autocmd BufRead       *.c	syn region braceFold start="{" end="}" transparent fold contains=TOP
  autocmd BufRead       *.c	set tags=/home/bje/.tags,./tags,tags
  autocmd BufRead       *.cc	set formatoptions=croq cindent shiftwidth=4
  autocmd BufRead       *.cc	set comments=sr:/*,mb:*,el:*/ showmatch
  autocmd BufReadPost   *.t     set syntax=perl
  autocmd BufReadPost   *.html  set shiftwidth=2
  autocmd BufReadPost   *.xml   set shiftwidth=2
  autocmd BufReadPost   *.xsl   set shiftwidth=2
  autocmd BufReadPost   *.jsp   set shiftwidth=2
  autocmd BufReadPost   *.hx    set syntax=haxe
  autocmd BufReadPost   *.go    set syntax=go
augroup END

"set statusline=
"set statusline +=%1*\ %n\ %*            "buffer number
"set statusline +=%5*%{&ff}%*            "file format
"set statusline +=%3*%y%*                "file type
"set statusline +=%2*%m%*                "modified flag
"set statusline +=%1*%=%5l%*             "current line
"set statusline +=%2*/%L%*               "total lines

set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

set laststatus=2
set timeoutlen=50
set wildmenu

let g:airline_theme='wombat'

" Haskell workflow
let g:syntastic_haskell_checkers=['ghc_mod', 'hlint']
map <silent> tu :call GHC_BrowseAll()<CR>
map <silent> tw :call GHC_ShowType(1)<CR>
"noremap <buffer>
