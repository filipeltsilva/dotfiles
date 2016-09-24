filetype plugin indent on
set autoindent
set backspace=eol,indent,start
set copyindent
set history=1000
set laststatus=2
set mouse=a
set nocompatible
set nowrap
set showcmd
set showmatch
set showmode
set title
set ttyfast
set ul=1000
set visualbell
set wildmenu
set wildmode=longest,list

" Autoloading .vimrc file
if has('autocmd')
    autocmd BufWritePost ~/.vimrc source $MYVIMRC
endif

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set hlsearch
set ignorecase
set incsearch
set smartcase
