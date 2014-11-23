" カラーテーマ
colorscheme molokai
syntax on

"------------------------------------
" neobundle.git
"------------------------------------
filetype off
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
endif

" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'git://github.com/altercation/vim-colors-solarized.git'

" OSデフォルトのクリップボードを使う
NeoBundle 'git://github.com/kana/vim-fakeclip.git'

"ファイラー
NeoBundle 'scrooloose/nerdtree'

call neobundle#end()


filetype plugin indent on     "最後にplugin onにしておく。必須！


"------------------------------------
" configure
"------------------------------------

" Utils

" 編集中のファイルの場所をカレントディレクトリに
set autochdir

" 互換モードOFF
set nocompatible

"タブを常に表示
set showtabline=2

" 起動メッセージ抑止
set shortmess+=I

" キーマップリーダー
let mapleader = "\\"

" スクロール時の余白確保
set scrolloff=5

" 一行に長い文章を書いていても自動折り返しをしない
set textwidth=0

" バックアップ取らない
set nobackup

" スワップファイル作らない
set noswapfile

" UNDOファイルを作らない
set noundofile

" 他で書き換えられたら自動で読み直す
set autoread

" 編集中でも他のファイルを開けるようにする
set hidden

" バックスペースでなんでも消せるように
set backspace=indent,eol,start

" テキスト整形オプション，マルチバイト系を追加
set formatoptions=lmoq

" ビープをならさない
set vb t_vb=

" Exploreの初期ディレクトリ
set browsedir=buffer

" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

" コマンドをステータス行に表示
set showcmd

" 現在のモードを表示
set showmode

" モードラインは無効
set modelines=0

" tabを使わない
set expandtab

" インデントを賢く
set smartindent

" 自動でインデント
set autoindent

" tab幅を半角2文字に
set tabstop=2
set shiftwidth=2
set softtabstop=2

" tabを賢く
set smarttab

"不可視文字を表示
 set list
 set listchars=tab:»-,trail:~,eol:↲,extends:»,precedes:«,nbsp:%



"ステータスラインにいろいろ表示
 set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" 行番号表示
set number

"編集中のファイル名を表示
set title

"ルーラーの表示
set ruler

"入力中のコマンドをステータスに表示する
set showcmd

"括弧入力時の対応する括弧を表示
set showmatch

" 2バイト半角文字対応
set ambiwidth=double

" カラー表示
syntax on

" 検索設定

set hlsearch
set ignorecase
set smartcase
set incsearch

" encoding
set enc=utf-8
set fenc=utf-8

" Macのクリップボードを使う
set clipboard+=autoselect
set clipboard+=unnamed

" Ev/Rvでvimrcを編集/リロードする
command! Ev edit $HOME/.vimrc
command! Rv source $HOME/.vimrc

" 矩形選択で自由に移動する
set virtualedit+=block

" カーソル行をハイライト
set cursorline
" カレントウィンドウにのみ罫線を引く
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END
:hi clear CursorLine
:hi CursorLine gui=underline
highlight CursorLine ctermbg=black guibg=black


"------------------------------------
" keymap
"------------------------------------

" 最後に編集された位置に移動
nnoremap gb '[
nnoremap gp ']

" 対応する括弧に移動
nnoremap [ %
nnoremap ] %

"NERDTree
nnoremap <F12> :NERDTreeToggle<CR>


" タブページの切り替えをCTRL+Tab SHIFT+Tabで行うように.
  nnoremap <C-Tab>   gt
  nnoremap <C-S-Tab> gT



