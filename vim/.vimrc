" RELOADING .vimrc FILE WHEN IT'S SAVED
if has('autocmd')
    autocmd BufWritePost ~/.vimrc source $MYVIMRC
endif

set autoindent

set relativenumber

set incsearch

set mouse=a
set cursorline

set encoding=utf-8

set wildmenu
set confirm

set background=dark
colorscheme slate
