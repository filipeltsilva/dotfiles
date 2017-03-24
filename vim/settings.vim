" CHARSET SETTINGS
set encoding=utf-8
set fileencoding=utf-8

" COMPLETION SETTINGS
set wildchar=<Tab>
set wildignore+=*.DS_STORE,node_modules/**
set wildmenu
set wildmode=list:longest

" GENERAL SETTINGS
set autoread
set backspace=eol,indent,start
set history=1000
set laststatus=2
set mouse=a
set nocompatible
set nowrap
set showcmd
set showmatch
set showmode
set ttyfast
set undolevels=1000
set visualbell

" PACKAGES SETTINGS
let g:jsx_ext_required = 0 " Allow JSX in JS files
let g:user_emmet_expandabbr_key='<Tab>'

" SEARCH SETTINGS
set hlsearch
set ignorecase
set incsearch
set smartcase
