" Install vim-plug if we don't already have it
if empty(glob("~/.vim/autoload/plug.vim"))
    " Ensure all needed directories exist  (Thanks @kapadiamush)
    execute '!mkdir -p ~/.vim/plugged'
    execute '!mkdir -p ~/.vim/autoload'
    " Download the actual plugin manager
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/rainbow_parentheses.vim'
Plug 'flazz/vim-colorschemes'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jamessan/vim-gnupg'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/neocomplete.vim'
Plug 'vimwiki/vimwiki'

" Haskell tools
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }
Plug 'eagletmt/neco-ghc', { 'for': 'haskell' }

" Misc. languages
Plug 'rust-lang/rust.vim', { 'for': 'rust' }

" HTML/web
Plug 'othree/html5.vim'
Plug 'vim-pandoc/vim-pandoc', { 'for': 'markdown' }
Plug 'vim-pandoc/vim-pandoc-syntax' , { 'for': 'markdown' }

" Potential
" Plug 'mattn/emmet-vim'              " HTML/CSS editor snippets

" Disabled
" Plug 'sjl/gundo'                    " Graphical undo
" Plug 'tikhomirov/vim-glsl'
" Plug 'raichoo/purescript-vim'
" Plug 'ledger/vim-ledger'

" Retired
" Plug 'tpope/vim-pathogen'
" Plug 'VundleVim/Vundle.vim'
call plug#end()
