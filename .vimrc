"set nocompatible " vi 互換をオフにする
set wildmode=longest:full,list " コマンドモードでの補完設定

"文字コード関係
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,iso-2022-jp,cp932,euc-jp,default,latin
set fileencoding=utf-8
set fileformat=unix
scriptencoding utf-8

"NeoBundle Scripts-------------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  set runtimepath+=$HOME/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('$HOME/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
"NeoBundle 'tpope/vim-fugitive' " vimでgit
"NeoBundle 'kien/ctrlp.vim' " Full path fuzzy file, buffer, mru, tag, ... finder
"NeoBundle 'scrooloose/nerdtree' " A tree explorer plugin for vim.
"NeoBundle 'majutsushi/tagbar' " a class outline viewer
"NeoBundle 'Shougo/vimfiler' " Powerful file explorer implemented by Vim script
"NeoBundle 'Shougo/vimproc.vim', {'build' : {'mac' : 'make -f make_mac.mak'}}
"NeoBundle 'Shougo/unite.vim'
"NeoBundle 'Shougo/unite-outline'
"NeoBundle 'eetsukumaran/vim-filebeagle' " A VINE-spired (Vim Is Not Emacs) file system explorer.
"NeoBundle 'flazz/vim-colorschemes'
"NeoBundle 'jpo/vim-railscasts-theme'
"NeoBundle 'Yggdroot/indentLine' "インデントをわかりやすく表示
"NeoBundle 'tpope/vim-abolish' "検索・置換を便利にする

"snipppet""""""""""""
NeoBundle 'Shougo/neocomplete.vim' "スニペットの補完
NeoBundle 'Shougo/neosnippet.vim' "Neosnippet本体
NeoBundle 'Shougo/neosnippet-snippets' "Neosnippet用スニペット集

"html""""""""""""
NeoBundle 'mattn/emmet-vim'
"NeoBundle 'tpope/vim-surround'

"js""""""""""""
NeoBundle 'simple-javascript-indenter'
NeoBundle 'jelera/vim-javascript-syntax' "Enhanced javascript syntax file
"NeoBundle 'mattn/jscomplete-vim' "JavaScript complete script

"go""""""""""""
NeoBundle 'dgryski/vim-godef'
NeoBundle 'vim-jp/vim-go-extra'
"NeoBundle 'google/vim-ft-go' " vim-ft-goは最新版のvimを使えない場合のみ
set rtp^=$GOPATH/src/github.com/nsf/gocode/vim"

"slim""""""""""""
NeoBundle 'slim-template/vim-slim' "slim syntax highlighting for vim.

call neobundle#end()
filetype plugin indent on
NeoBundleCheck
"End NeoBundle Scripts---------------------------

"Neocomplete Scripts---------------------------
""""""""""let g:neocomplete#enable_at_startup = 1 " Use neocomplete.
""""""""""let g:neocomplete#enable_smart_case = 1 " Use smartcase.
""""""""""let g:neocomplete#sources#syntax#min_keyword_length = 3 " Set minimum syntax keyword length.
""""""""""let g:neocomplete#lock_iminsert = 1 "If this variable is non-zero, neocomplete locks when 'iminsert' is non-zero.
""""""""""
""""""""""" Recommended key-mappings.
""""""""""" <CR>: close popup and save indent.
""""""""""inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
""""""""""function! s:my_cr_function()
""""""""""  return neocomplete#close_popup() . "\<CR>"
""""""""""  " For no inserting <CR> key.
""""""""""  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
""""""""""endfunction
""""""""""" <TAB>: completion.
""""""""""inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
""""""""""" <C-h>, <BS>: close popup and delete backword char.
""""""""""inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
""""""""""inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
""""""""""inoremap <expr><C-y>  neocomplete#close_popup()
""""""""""inoremap <expr><C-e>  neocomplete#cancel_popup()
""""""""""
""""""""""" Enable omni completion.
""""""""""autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
""""""""""autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
""""""""""autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
""""""""""autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
""""""""""
""""""""""" For perlomni.vim setting.
""""""""""" https://github.com/c9s/perlomni.vim
""""""""""let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
""""""""""
""""""""""" Go (plugin: gocode)
"""""""""""let g:neocomplete#sources#omni#functions.go = 'gocomplete#Complete'
""""""""""
"End Neocomplete Scripts------------------------

"Scripts setting----------------------------------
let g:user_emmet_settings = { 'lang' : 'ja' }

autocmd FileType javascript
  \ :setl omnifunc=jscomplete#CompleteJS
:let g:jscomplete_use = ['dom', 'moz'] " => autoload/js/dom.vim と autoload/js/moz.vim が読まれる


"End scripts setting------------------------------

"全角空白を強調表示-------------------------------
augroup highlightDoubleByteSpace
  autocmd!
  autocmd VimEnter,Colorscheme * highlight DoubleByteSpace term=underline ctermbg=LightMagenta guibg=LightMagenta
  autocmd VimEnter,WinEnter,BufRead * match DoubleByteSpace /　/
augroup END
"全角空白を強調表示 END---------------------------


set clipboard+=unnamed "ヤンクのときにクリップボードにもコピー
set number "行番号の表示
set wildmode=longest:full,list " コマンドモードでの補完設定

set visualbell
set backupdir=$HOME/.vim_tmp
set directory=$HOME/.vim_tmp
set undodir=$HOME/.vim_tmp
"set list "改行可視化
set formatoptions=q "自動改行オフ
"set cursorline

set expandtab "タブ入力のスペース置き換え
set tabstop=2 "タブ文字の文字数
set shiftwidth=2 "追加タブ幅
set softtabstop=2 "タブキー・バックスペースキー幅
set autoindent "改行時のインデント継続
set smartindent "改行時インデント自動増減
"set expandtab "タブ入力を複数の空白入力に置き換える

" for golang {{{
set path+=$GOPATH/src/**
let g:gofmt_command = 'goimports'
au BufWritePre *.go Fmt
au BufNewFile,BufRead *.go set sw=4 noexpandtab ts=4 completeopt=menu,preview
au FileType go compiler go
" }}}

syntax on
