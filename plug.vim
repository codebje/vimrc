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
Plug 'scrooloose/syntastic.git'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive.git'
Plug 'airblade/vim-gitgutter.git'
Plug 'kien/rainbow_parentheses.vim.git'
Plug 'flazz/vim-colorschemes.git'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jamessan/vim-gnupg.git'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/neocomplete.vim'
" Haskell tools
Plug 'eagletmt/ghcmod-vim'            " GHC integration
Plug 'eagletmt/neco-ghc'              " Completions using ghcmod

" Misc. languages
Plug 'rust-lang/rust.vim'

" HTML/web
Plug 'othree/html5.vim.git'
Plug 'vim-pandoc/vim-pandoc.git'
Plug 'vim-pandoc/vim-pandoc-syntax.git'

" Potential
" Plug 'mattn/emmet-vim'              " HTML/CSS editor snippets

" Disabled
" Plug 'sjl/gundo'                    " Graphical undo
" Plug 'tikhomirov/vim-glsl'
" Plug 'raichoo/purescript-vim'
" Plug 'ledger/vim-ledger.git'

" Retired
" Plug 'tpope/vim-pathogen'
" Plug 'VundleVim/Vundle.vim'
call plug()
