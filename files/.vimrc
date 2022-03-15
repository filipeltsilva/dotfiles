### BASIC SETTINGS ###
set encoding=utf-8

set nobackup
set nocompatible
set nowrap

filetype on
filetype indent on
filetype plugin on

set history=1000
set undolevels=1000

set autoindent

set confirm

set cursorline

set numberwidth=5
set relativenumber

set hlsearch
set ignorecase
set incsearch
set showmatch
set smartcase

set mouse=a

set showcmd
set showmode

set wildmenu

### PLUGIN SETTINGS ###
call plug#begin('$HOME/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'

Plug 'editorconfig/editorconfig-vim'

Plug 'jiangmiao/auto-pairs'

call plug#end()

### LANGUAGE SETTINGS ###
syntax on

autocmd FileType * set expandtab shiftwidth=2 tabstop=2
autocmd FileType python set expandtab shiftwidth=4 tabstop=4

### VISUAL SETTINGS ###
set background=dark

colorscheme slate
