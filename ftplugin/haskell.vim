" have to disable ghc_mod until ghc 7.10 is available; cabal 1.22, ghc-mod, and ghc 7.8 are
" not compatible
nnoremap <buffer> <silent> <LocalLeader>t :HdevtoolsType<CR>
nnoremap <buffer> <silent> <LocalLeader>i :HdevtoolsInfo<CR>
nnoremap <buffer> <silent> <LocalLeader>c :HdevtoolsClear<CR>

function! FindCabalSandboxRoot()
    return finddir('.cabal-sandbox', '.;')
endfunction

function! FindCabalSandboxRootPackageConf()
    return glob(FindCabalSandboxRoot().'/*-packages.conf.d')
endfunction

let g:syntastic_haskell_hdevtools_args = '-g-ilib -g-isrc -g-i. -g-idist/build/autogen -g-Wall -g-package-conf='.FindCabalSandboxRootPackageConf()
