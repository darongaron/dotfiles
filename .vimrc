set encoding=utf-8
scriptencoding utf-8
set fileencodings=utf-8,ucs-bom,iso-2022-jp,cp932,euc-jp,default,latin
set fileencoding=utf-8
set fileformat=unix

augroup vimrc "autocmd初期化2重実行対策
  autocmd!
augroup END

"dein Scripts-------------------------------
" プラグインをインストールするディレクトリ
let s:bundles_dir = expand('$HOME/.vim/bundles')
" dein.vim 本体
let s:dein_dir = s:bundles_dir . '/repos/github.com/Shougo/dein.vim'

if &compatible"
  set nocompatible
endif"

set runtimepath+=s:dein_dir

if dein#load_state(s:bundles_dir)
  call dein#begin(s:bundles_dir)
  " Let dein manage dein
  call dein#add(s:dein_dir)
  " Add or remove your plugins here:
  call dein#add('ctrlpvim/ctrlp.vim') " Full path fuzzy file, buffer, mru, tag, ... finder
  "call dein#add('nixprime/cpsm') "A CtrlP matcher, specialized for paths.
  "call dein#add('mattn/files') "Fast file find (Requirements golang)

  call dein#add('justinmk/vim-dirvish') " A VINE-spired (Vim Is Not Emacs) file system explorer. 

  "html""""""""""""
  call dein#add('mattn/emmet-vim')
  call dein#add('tpope/vim-surround')
  call dein#add('ap/vim-css-color')

  "js""""""""""""
  call dein#add('simple-javascript-indenter')
  call dein#add('jelera/vim-javascript-syntax') "Enhanced javascript syntax file
  call dein#add('mattn/jscomplete-vim') "JavaScript complete script

  "go""""""""""""
  call dein#add('dgryski/vim-godef')
  "call dein#add('google/vim-ft-go') " vim-ft-goは最新版のvimを使えない場合のみ
  call dein#add('vim-jp/vim-go-extra')
  "set runtimepath^=$GOPATH/src/github.com/nsf/gocode/vim

  "slim""""""""""""
  call dein#add('slim-template/vim-slim') "slim syntax highlighting for vim.
  " You can specify revision/branch/tag.
  "call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts---------------------------

"Scripts setting----------------------------------
let g:user_emmet_settings = { 'lang' : 'ja' }

autocmd FileType javascript
  \ :setl omnifunc=jscomplete#CompleteJS
:let g:jscomplete_use = ['dom', 'moz'] " => autoload/js/dom.vim と autoload/js/moz.vim が読まれる


"End scripts setting------------------------------

set tags=./tags;
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
