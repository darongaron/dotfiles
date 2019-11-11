set encoding=utf-8
scriptencoding utf-8
set fileencodings=cp932,iso-2022-jp,ucs-bom,euc-jp,utf-8,default,latin,utf16le
set fileencoding=utf-8
set fileformats=unix,mac,dos
set fileformat=unix
set termencoding=utf-8
set helplang=ja,en
set nobomb

" ----for coc
set hidden
set nobackup
set nowritebackup
set cmdheight=2
" set updatetime=300
set shortmess+=c
set signcolumn=yes
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Highlight symbol under cursor on CursorHold
"autocmd CursorHold * silent call CocActionAsync('highlight')
" ---- end for coc 
"

" eskk ----------
let g:eskk#directory = '~/eskk'
let g:eskk#dictionary = {'path': '~/.eskk/skk','sorted': 0,'encoding': 'utf-8'}
let g:eskk#large_dictionary = {'path': '~/.eskk/SKK-JISYO.L','sorted': 1,'encoding': 'utf-8'}
" end eskk ----------

set rtp+=~/.fzf
"set pyxversion=3
"set pythonthreedll=$HOME\scoop\apps\python35\3.5.4\python35.dll
"let g:python3_host_prog = $HOME."python35"
"
"augroup vimrc "autocmd初期化2重実行対策
"  autocmd!
"augroup END

call plug#begin('~/.vim/plugged')
    Plug 'mattn/emmet-vim'
    Plug 'tpope/vim-surround'
    Plug 'tyru/eskk.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Plug 'neoclide/coc.nvim'
    " Plug 'autozimu/LanguageClient-neovim', {
    "    \ 'branch': 'next',
    "    \ 'do': 'powershell -executionpolicy bypass -File install.ps1',
    "    \ }
    Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
    Plug 'junegunn/fzf.vim'
    " Plug '/ProgramData/chocolatey/bin'
    " Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
    " Plug 'nelsyeung/twig.vim'
    Plug 'evidens/vim-twig'
    Plug 'leafgarland/typescript-vim'
    "Plug 'kynan/dokuvimki', {'on': 'DokuVimKi'}
    Plug 'nblock/vim-dokuwiki'
    Plug 'cespare/vim-toml'
    Plug 'tpope/vim-dadbod'
call plug#end()

"add plubin start-------------
"if executable('javascript-typescript-stdio')
"else
"  echo "javascript-typescript-stdio not installed!\n"
"  :cq
"endif

" let g:LanguageClient_autoStart = 0
" let g:LanguageClient_diagnosticsDisplay = {
"     \  1: { "signText": "x" },
"     \  2: { "signText": "!" },
"     \  3: { "signText": "i" },
"     \  4: { "signText": ">" },
"     \ }

"\ 'javascript': ['node', 'javascript-typescript-stdio.cmd']
"let g:LanguageClient_serverCommands = {
"    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
"    \ 'go': ['go-langserver'],
"    \ 'javascript': ['node', $HOME.'\AppData\Roaming\npm\node_modules\javascript-typescript-langserver\lib\language-server-stdio']
"    \ 'javascript': ['node', $HOME.'\AppData\Roaming\npm\node_modules\javascript-typescript-langserver\lib\language-server-stdio']
" C:\Users\藤田明良\AppData\Roaming\npm\javascript-typescript-langserver -> C:\Users\藤田明良\AppData\Roaming\npm\node_modules\javascript-typescript-langserver\lib\language-server.js
" C:\Users\藤田明良\AppData\Roaming\npm\javascript-typescript-stdio -> C:\Users\藤田明良\AppData\Roaming\npm\node_modules\javascript-typescript-langserver\lib\language-server-stdio.js
"php vendor/felixfbecker/language-server/bin/php-language-server.php
"C:\Users\藤田明良\AppData\Roaming\Composer\vendor\felixfbecker\language-server\bin>
" let g:LanguageClient_rootMarkers = {
"     \ 'go': ['.git', 'go.mod'],
"     \ }
"\ 'php': ['php', $HOME.'\AppData\Roaming\Composer\vendor\felixfbecker\language-server\bin\php-language-server.php'],
"\ 'go': ['tcp://localhost:4389'],
    "\ 'go': ['golsp'],
    "\ 'go': ['go-langserver', '-func-snippet-enabled', '-gocodecompletion', '-format-tool', 'gofmt', '-lint-tool', 'golint'],
    "\ 'go': ['golsp'],
    "\ 'go': ['bingo', '-mode', 'stdio', '-cache-style', 'always', '-logfile','bingo.log'],
"    \ 'typescript': ['node', $HOME.'\AppData\Roaming\npm\node_modules\javascript-typescript-langserver\lib\language-server-stdio'],
"    \ 'javascript': ['node', $HOME.'\AppData\Roaming\npm\node_modules\javascript-typescript-langserver\lib\language-server-stdio'],

" let g:LanguageClient_serverCommands = {
"     \ 'typescript': ['node', $HOME . '\scoop\apps\nodejs8\current\bin\node_modules\javascript-typescript-langserver\lib\language-server-stdio'],
"     \ 'javascript': ['node', $HOME . '\scoop\apps\nodejs8\current\bin\node_modules\javascript-typescript-langserver\lib\language-server-stdio'],
"     \ 'php': ['php', 'C:\Users\f\AppData\Roaming\Composer\vendor\felixfbecker\language-server\bin\php-language-server.php'],
"     \ 'python': ['pyls'],
"     \ 'go': ['go-langserver', '-func-snippet-enabled', '-gocodecompletion', '-format-tool', 'gofmt', '-lint-tool', 'golint'],
"     \ 'rust': ['rustup', 'run', 'stable', 'rls'],
"     \ }

"let g:LanguageClient_loggingLevel = 'DEBUG'
"K			カーソル位置のキーワードを調べるためのプログラムを実行
"keywordprg'
" function LC_maps()
"   if has_key(g:LanguageClient_serverCommands, &filetype)
"     nnoremap <F5> :call LanguageClient_contextMenu()<CR>
"     "nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
"     nnoremap K :call LanguageClient#textDocument_hover()<CR>
"     "set keywordprg=:call LanguageClient#textDocument_hover()
"     "set keywordprg=:call LanguageClient#textDocument_hover()
"     "gd			ローカル宣言を検索します。
"     "nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
"     nnoremap gd :call LanguageClient#textDocument_definition()<CR>
"     set completefunc=LanguageClient#complete
"     set formatexpr=LanguageClient#textDocument_rangeFormatting_sync()
"     "nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
"     nnoremap <F2> :call LanguageClient#textDocument_rename()<CR>
"     "let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
"     "let g:ctrlp_cache_dir = $HOME.'/.vim_tmp/ctrlp'
"     "add plubin end-------------
"   endif
" endfunction

" augroup LangClient
"   autocmd!
"   autocmd LangClient FileType * call LC_maps()
" augroup END


"fzf
nnoremap <C-p> :Files<CR>
"deo
""let g:deoplete#enable_at_startup = 1
" call deoplete#custom#source('_', 'matchers', ['matcher_full_fuzzy'])
" call deoplete#custom#source('LanguageClient-neovim', 'matchers', ['matcher_full_fuzzy'])
" call deoplete#custom#option('on_insert_enter', v:false)
" call deoplete#custom#option('ignore_sources', {
"       \'_': ['buffer'],
"       \'LanguageClient-neovim': ['buffer']
"       \})
set completeopt=noinsert,menuone,noselect,preview
"set completeopt+=noinsert
"set completeopt+=preview

" function g:Multiple_cursors_before()
"   call deoplete#custom#buffer_option('auto_complete', v:false)
" endfunction
" function g:Multiple_cursors_after()
"   call deoplete#custom#buffer_option('auto_complete', v:true)
" endfunction


"set tags=./tags;
set wildmenu
set wildmode=list:longest,full "コマンドラインモードでTABキーによるファイル名補完を有効にする
"set wildmode=longest:full,full " コマンドモードでのtabキー補完
set clipboard+=unnamed "ヤンクのときにクリップボードにもコピー
"set number "行番号の表示
set nobackup
set noswapfile
set visualbell "音が鳴らないように
set backupdir=$HOME/.vim_tmp
set directory=$HOME/.vim_tmp
set undodir=$HOME/.vim_tmp

""エラー表示
"set verbosefile=$HOME/.vim_tmp/vim.log
"set verbose=20

"set list "改行可視化
set formatoptions=q "自動改行オフ
"set linebreak       "いい感じのところで折り返す
set breakindent     "折り返し後のインデント有効
set breakindentopt=shift:2
set expandtab       "タブ入力のスペース置き換え
set tabstop=2       "タブ文字の文字数
set shiftwidth=2    "追加タブ幅
set softtabstop=2   "タブキー・バックスペースキー幅
set autoindent      "改行時のインデント継続
set smartindent     "改行時インデント自動増減

augroup fileTypeConf
    autocmd!
    autocmd fileTypeConf BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd fileTypeConf FileType go setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
    autocmd fileTypeConf BufWinEnter *.txt setlocal filetype=dokuwiki
augroup END

"autocmd FileType go autocmd BufWritePre <buffer> Fmt
"setlocal omnifunc=syntaxcomplete#Complete

" パワーシェルをデフォルト
" set shell=powershell shellquote=( shellpipe=\| shellredir=> shellxquote=
" set shellcmdflag=-NoLogo\ -NoProfile\ -ExecutionPolicy\ RemoteSigned\ -Command
set termguicolors "24ビットカラー
autocmd ColorScheme * highlight Pmenu guibg=#b4009e
colorscheme desert

autocmd FileType json syntax match Comment +\/\/.\+$+

syntax on
