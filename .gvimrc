colorscheme desert
set transparency=10
set guifont=Osaka-Mono:h14
" 縦幅　デフォルトは24
set lines=50
" 横幅　デフォルトは80
set columns=130

"全角空白を強調表示-------------------------------
"augroup highlightDoubleByteSpace
"  autocmd!
"  autocmd VimEnter,Colorscheme * highlight DoubleByteSpace term=underline ctermbg=LightMagenta guibg=LightMagenta
"  autocmd VimEnter,WinEnter,BufRead * match DoubleByteSpace /　/
"augroup END
"全角空白を強調表示 END---------------------------
