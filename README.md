My VIM setup.

I symlink vimrc to ~/.vimrc, so everything remains contained inside the git repository.  Only global
settings go in vimrc (in theory, I have bugs in my process).  I use git submodules to pull in bundles
for the various plugins I want, and of course use pathogen to manage loading them.

Current submodules:

gundo           shows undo tree
syntastic       syntax checking
vim-airline     status line for a relatively lightweight but useful bar
vim-bufferline  for when I went through a multi-buffer phase, now largely useless
vim-fugitive    provides git branch name in the status line (and other stuff I don't use)
vim-gradle      essentially just map .gradle to filetype groovy
vim-hdevtools   Haskell tools for vim, stuff like dynamic type checking
vim-pathogen    the manager for all of these modules
vim-puppet      syntax highlighting for puppet files
vim-scala       I basically just use this for scala syntax highlighting
