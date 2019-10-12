set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'junegunn/fzf.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Lets me use the mouse
set mouse=a
" Colorscheme things
set background=dark
colorscheme adventurous
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename' ] ],
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ },
      \ }

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction

" Sets up tabbing
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set smarttab
set autoindent

" Sets lin number
set number

" Everything for searching
set hlsearch
set incsearch
set smartcase
set showmatch

set linebreak
" Enables Syntax highlighting
syntax enable

" Automatically wrap text that extends beyond the screen length.
set wrap

set laststatus=2
set tabpagemax=50
set title

set backupdir=~/.cache/vim
set history=1000

" Ignores pyc
set wildignore+=.pyc,.swp

" Fixes common backspace problems
"set backspace=indent,eol,start

" Encoding
set encoding=utf-8


