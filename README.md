My VIM setup.

This is on github so I can synchronise between hosts easily, plus of course version control goodness.

I symlink vimrc to ~/.vimrc, so everything remains contained inside the git repository.  Only global
settings go in vimrc (in theory, I have bugs in my process).  I use git submodules to pull in bundles
for the various plugins I want, and of course pathogen is used to manage them.

Current submodules are:

gundo           shows undo tree
syntastic       syntax checking
vim-airline     status line for a relatively lightweight but useful bar
vim-bufferline  for when I went through a multi-buffer phase, now largely useless
vim-fugitive    provides git branch name in the status line (and other stuff I don't use)
vim-gitgutter   git change markers in the vim signs gutter
vim-gradle      essentially just map .gradle to filetype groovy
vim-hdevtools   Haskell tools for vim, stuff like dynamic type checking
vim-pathogen    the manager for all of these modules
vim-puppet      syntax highlighting for puppet files
vim-scala       I basically just use this for scala syntax highlighting
