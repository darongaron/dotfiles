let g:gofmt_command = 'goimports' " :Fmt などで gofmt の代わりに goimports を使う
autocmd BufWritePre <buffer> Fmt
autocmd BufWritePre *.go Fmt " 保存時(バッファ全体をファイルに書き込むとき)に :Fmt する
set shiftwidth=4
set noexpandtab
set tabstop=4
set completeopt=menu,preview "completeopt = preview 補完内容を詳細表示
compiler go
:highlight goErr cterm=bold ctermfg=214
:match goErr /\<err\>/

" gotags {{{
""""let g:tagbar_type_go = {
""""    \ 'ctagstype' : 'go',
""""    \ 'kinds'     : [
""""        \ 'p:package',
""""        \ 'i:imports:1',
""""        \ 'c:constants',
""""        \ 'v:variables',
""""        \ 't:types',
""""        \ 'n:interfaces',
""""        \ 'w:fields',
""""        \ 'e:embedded',
""""        \ 'm:methods',
""""        \ 'r:constructor',
""""        \ 'f:functions'
""""    \ ],
""""    \ 'sro' : '.',
""""    \ 'kind2scope' : {
""""        \ 't' : 'ctype',
""""        \ 'n' : 'ntype'
""""    \ },
""""    \ 'scope2kind' : {
""""        \ 'ctype' : 't',
""""        \ 'ntype' : 'n'
""""    \ },
""""    \ 'ctagsbin'  : 'gotags',
""""    \ 'ctagsargs' : '-sort -silent'
""""\ }
" }}}

"au FileType go nmap <leader>r <Plug>(go-run)
"au FileType go nmap <leader>b <Plug>(go-build)
"au FileType go nmap <leader>t <Plug>(go-test)
"au FileType go nmap <leader>c <Plug>(go-coverage)
"
"au FileType go nmap <Leader>ds <Plug>(go-def-split)
"au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
"au FileType go nmap <Leader>dt <Plug>(go-def-tab)
"
"au FileType go nmap <Leader>gd <Plug>(go-doc)
"au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
"
"au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
"
"au FileType go nmap <Leader>s <Plug>(go-implements)
"
"au FileType go nmap <Leader>i <Plug>(go-info)
"
"au FileType go nmap <Leader>e <Plug>(go-rename)
"
"let g:go_play_open_browser = 0
"let g:go_fmt_fail_silently = 1
"let g:go_fmt_command = "goimports"
"let g:go_fmt_autosave = 0
"let g:go_bin_path = expand("~/.gotools")
"let g:go_bin_path = "/home/fatih/.mypath"      "or give absolute path
"let g:go_highlight_functions = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_structs = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_build_constraints = 1
