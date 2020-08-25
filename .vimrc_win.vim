set encoding=utf-8
scriptencoding utf-8
"set fileencodings=cp932,iso-2022-jp,ucs-bom,euc-jp,utf-8,default,latin,utf16le
set fileencodings=utf-8,cp932,iso-2022-jp,ucs-bom,euc-jp,default,latin,utf16le
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


augroup MyVimrc
  autocmd!
augroup END

call plug#begin('~/.vim/plugged')
    Plug 'mattn/emmet-vim'
    Plug 'tpope/vim-surround'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
    Plug 'junegunn/fzf.vim'
    " Plug '/ProgramData/chocolatey/bin'
    "Plug 'roxma/nvim-yarp'
    "Plug 'roxma/vim-hug-neovim-rpc'
    " Plug 'nelsyeung/twig.vim'
    Plug 'evidens/vim-twig'
    Plug 'leafgarland/typescript-vim'
    "Plug 'kynan/dokuvimki', {'on': 'DokuVimKi'}
    Plug 'nblock/vim-dokuwiki'
    Plug 'cespare/vim-toml'
    Plug 'tpope/vim-dadbod'
    Plug 'chriskempson/base16-vim'
call plug#end()

"add plubin start-------------

"fzf
nnoremap <C-p> :Files<CR>
set completeopt=noinsert,menuone,noselect,preview
"set completeopt+=noinsert
"set completeopt+=preview


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

" error output
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

augroup MyVimrc
    autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd FileType go setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
    autocmd BufWinEnter *.txt setlocal filetype=dokuwiki
    "autocmd FileType go autocmd BufWritePre <buffer> Fmt
    "autocmd FileType json syntax match Comment +\/\/.\+$+
augroup END

"setlocal omnifunc=syntaxcomplete#Complete

set termguicolors "24bit color

" light
" colorscheme base16-brushtrees
" colorscheme base16-harmonic-light
" dark
" colorscheme base16-ocean
" colorscheme base16-flat
" colorscheme base16-brushtrees-dark
" colorscheme base16-dracula
" colorscheme base16-unikitty-dark
colorscheme base16-tomorrow-night-eighties


syntax on
