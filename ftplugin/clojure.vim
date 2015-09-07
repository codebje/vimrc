augroup rainbow_parentheses
    au!
    au VimEnter * RainbowParenthesesActivate
    au BufEnter * RainbowParenthesesLoadRound
    au BufEnter * RainbowParenthesesLoadSquare
    au BufEnter * RainbowParenthesesLoadBraces
augroup END
