set encoding=utf-8
scriptencoding utf-8
set fileencodings=utf-8,ucs-bom,iso-2022-jp,cp932,euc-jp,default,latin
set fileencoding=utf-8
set fileformat=unix

augroup vimrc "autocmd初期化2重実行対策
  autocmd!
augroup END

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
NeoBundle 'kien/ctrlp.vim' " Full path fuzzy file, buffer, mru, tag, ... finder
"NeoBundle 'scrooloose/nerdtree' " A tree explorer plugin for vim.
"NeoBundle 'majutsushi/tagbar' " a class outline viewer
"NeoBundle 'Shougo/vimfiler' " Powerful file explorer implemented by Vim script
NeoBundle 'Shougo/vimproc.vim', {'build' : {'mac' : 'make -f make_mac.mak'}}
"NeoBundle 'Shougo/unite.vim'
"NeoBundle 'Shougo/unite-outline'
NeoBundle 'justinmk/vim-dirvish' " A VINE-spired (Vim Is Not Emacs) file system explorer. 

"NeoBundle 'flazz/vim-colorschemes'
"NeoBundle 'jpo/vim-railscasts-theme'
"NeoBundle 'Yggdroot/indentLine' "インデントをわかりやすく表示
"NeoBundle 'tpope/vim-abolish' "検索・置換を便利にする

"snipppet""""""""""""
"NeoBundle 'Shougo/neocomplete.vim' "スニペットの補完
"NeoBundle 'Shougo/neosnippet.vim' "Neosnippet本体
"NeoBundle 'Shougo/neosnippet-snippets' "Neosnippet用スニペット集

"html""""""""""""
NeoBundle 'mattn/emmet-vim'
NeoBundle 'tpope/vim-surround'

"js""""""""""""
NeoBundle 'simple-javascript-indenter'
NeoBundle 'jelera/vim-javascript-syntax' "Enhanced javascript syntax file
NeoBundle 'mattn/jscomplete-vim' "JavaScript complete script

"go""""""""""""
NeoBundle 'dgryski/vim-godef'
"NeoBundle 'google/vim-ft-go' " vim-ft-goは最新版のvimを使えない場合のみ
NeoBundle 'vim-jp/vim-go-extra'
"set runtimepath^=$GOPATH/src/github.com/nsf/gocode/vim

"slim""""""""""""
NeoBundle 'slim-template/vim-slim' "slim syntax highlighting for vim.

call neobundle#end()
filetype plugin indent on
NeoBundleCheck
"End NeoBundle Scripts---------------------------

"Neocomplete Scripts---------------------------
"""let g:neocomplete#enable_at_startup = 1 " Use neocomplete.
"""let g:neocomplete#enable_smart_case = 1 " Use smartcase.
"""let g:neocomplete#sources#syntax#min_keyword_length = 3 " Set minimum syntax keyword length.
"""let g:neocomplete#lock_iminsert = 1 "If this variable is non-zero, neocomplete locks when 'iminsert' is non-zero.
"""" Go (plugin: gocode)
""""let g:neocomplete#sources#omni#functions.go = 'gocomplete#Complete'
""""let g:neocomplete#sources#omni#input_patterns.go = '\h\w\.\w*' "neocompleteで自動補完
"""
"""" Recommended key-mappings.
"""" <CR>: close popup and save indent.
"""inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"""function! s:my_cr_function()
"""  return neocomplete#close_popup() . "\<CR>"
"""  " For no inserting <CR> key.
"""  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
"""endfunction
"""" <TAB>: completion.
"""inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"""" <C-h>, <BS>: close popup and delete backword char.
"""inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"""inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"""inoremap <expr><C-y>  neocomplete#close_popup()
"""inoremap <expr><C-e>  neocomplete#cancel_popup()
"""
"""" Enable omni completion.
"""autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"""autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"""autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"""autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"""
"""
""""ruby
"""
""""""g:neocomplete#force_omni_input_patterns
""""""		This dictionary records keyword patterns to Omni completion.
""""""		This is appointed in regular expression every file type.
""""""		If this pattern is not defined or empty pattern, neocomplete
""""""		does not call 'omnifunc'.
""""""		Note: If it is a set, neocomplete will call 'omnifunc'
""""""		directly.  So almost neocomplete features are disabled(for
""""""		example: auto select first candidate).  But
""""""		all Omni completion works instead of
""""""		|g:neocomplete#sources#omni#input_patterns|.
"""""">
""""""		if !exists('g:neocomplete#force_omni_input_patterns')
""""""		  let g:neocomplete#force_omni_input_patterns = {}
""""""		endif
""""""		let g:neocomplete#force_omni_input_patterns.ruby =
""""""		\ '[^. *\t]\.\w*\|\h\w*::'
"""  "
"""
"""""""g:neocomplete#ignore_composite_filetypes
"""""""		It is a dictionary to ignore composite file type.
"""""""		The dictionary's key is composite filetype and value is
"""""""		filetype.
""""""">
"""""""		" Examples:
"""""""		let g:neocomplete#ignore_composite_filetypes = {
"""""""			\ 'ruby.spec' : 'ruby'
"""""""			\ }
"""""""<
"""""""		If you open filetype like "ruby.spec", completion is
"""""""		intended for "ruby" and "spec".
"""""""		But if you only want to complete "ruby" filetype,
"""""""		you can set this variable to ignore "spec".
"""""""
"""""""		Default value is {}.
"""
"""
"""""""g:neocomplete#sources#omni#input_patterns
"""""""		This dictionary records keyword patterns used in
"""""""		omni source.  This is appointed in regular expression
"""""""		every file type or 'omnifunc' name.  If this pattern is not
"""""""		defined or empty pattern, neocomplete does not call
"""""""		'omnifunc'.
"""""""		Note: ruby and php omnifunc are disabled, because they are too
"""""""		slow.
"""""""		Note: Partial omnifunc has problem when neocomplete call(Ex:
"""""""		rubycomplete, jedi.vim, cocoa.vim and clang_complete).  You
"""""""		should |g:neocomplete#force_omni_input_patterns| instead.
"""""""
"""""""		Because it is complicated, refer to s:source.initialize()
"""""""		autoload/neocomplete/sources/omni.vim for the
"""""""		initial value.
""""""">
"""""""		" Examples:
"""""""		if !exists('g:neocomplete#sources#omni#input_patterns')
"""""""		  let g:neocomplete#sources#omni#input_patterns = {}
"""""""		endif
"""""""		let g:neocomplete#sources#omni#input_patterns.php =
"""""""		\ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
"""""""		let g:neocomplete#sources#omni#input_patterns.c =
"""""""		\ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
"""
"""""""Q: Python (or Ruby) interface crashes Vim when I use neocomplete or not
"""""""responding when input ".":
"""""""
"""""""A: This is not neocomplete's issue.  Please report to the maintainers of the
"""""""omnicomplete (rubycomplete or pythoncomplete) and its Vim interface.  You
"""""""should disable omni source in python or ruby.
""""""">
"""""""	if !exists('g:neocomplete#sources#omni#input_patterns')
"""""""	  let g:neocomplete#sources#omni#input_patterns = {}
"""""""	endif
"""""""	let g:neocomplete#sources#omni#input_patterns.python = ''
"""""""	let g:neocomplete#sources#omni#input_patterns.ruby = ''
"""""""<
"""
"""
"""""""Q: Error occurred in ruby omni complete using
"""""""|g:neocomplete#sources#omni#input_patterns|.
"""""""https://github.com/vim-ruby/vim-ruby/issues/95
"""
"""
"""""""Q: Does not indent when I input "else" in ruby filetype.
"""""""
"""""""A:
"""""""
"""""""You must install "vim-ruby" from github to indent in neocomplete first.
"""""""https://github.com/vim-ruby/vim-ruby
"""
"""
"""""""Q: I want to use Ruby omni completion.
"""""""
"""""""A: Please set |g:neocomplete#force_omni_input_patterns|.  But this completion
"""""""is heavy, so disabled by default.
"""""""Note: But you should use |neocomplete-rsense| instead of rubycomplete.
"""""""https://github.com/Shougo/neocomplete-rsense
""""""">
"""""""	autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
"""""""	if !exists('g:neocomplete#force_omni_input_patterns')
"""""""	  let g:neocomplete#force_omni_input_patterns = {}
"""""""	endif
"""""""	let g:neocomplete#force_omni_input_patterns.ruby =
"""""""	\ '[^. *\t]\.\w*\|\h\w*::'
"""
"""
"""command! Nct :NeoCompleteToggle
"End Neocomplete Scripts------------------------

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

colorscheme desert
syntax on
