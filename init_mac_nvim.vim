set encoding=utf-8
scriptencoding utf-8
set fileencodings=utf-8,ucs-bom,iso-2022-jp,cp932,euc-jp,default,latin
set fileencoding=utf-8
set fileformat=unix

" coc ---------
set hidden
set cmdheight=2
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" coc ---------

augroup vimrc "autocmd初期化2重実行対策
  autocmd!
augroup END

call plug#begin()
  Plug 'mattn/emmet-vim'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tyru/eskk.vim'
call plug#end()

"Scripts setting----------------------------------
let g:user_emmet_settings = { 'lang' : 'ja' }
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-lists', 'coc-python', 'coc-phpls', 'coc-rust-analyzer']
"""autocmd FileType javascript
"""  \ :setl omnifunc=jscomplete#CompleteJS
""":let g:jscomplete_use = ['dom', 'moz'] " => autoload/js/dom.vim と autoload/js/moz.vim が読まれる
" Required for operations modifying multiple buffers like rename.

"End scripts setting------------------------------

" set tags=./tags;
set wildmenu wildmode=list:longest,full "コマンドラインモードでTABキーによるファイル名補完を有効にする
set clipboard+=unnamed "ヤンクのときにクリップボードにもコピー
set number "行番号の表示
set wildmode=longest:full,full " コマンドモードでのtabキー補完

set visualbell "音が鳴らないように
set backupdir=$HOME/.vim_tmp
set directory=$HOME/.vim_tmp
set undodir=$HOME/.vim_tmp
"set list "改行可視化
set formatoptions=q "自動改行オフ

set expandtab       "タブ入力のスペース置き換え
set tabstop=2       "タブ文字の文字数
set shiftwidth=2    "追加タブ幅
set softtabstop=2   "タブキー・バックスペースキー幅
set autoindent      "改行時のインデント継続
set smartindent     "改行時インデント自動増減

"autocmd FileType go autocmd BufWritePre <buffer> Fmt
"setlocal omnifunc=syntaxcomplete#Complete

colorscheme desert
syntax on
