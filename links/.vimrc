" RELOADING .vimrc FILE WHEN IT'S SAVED
if has('autocmd')
    autocmd BufWritePost ~/.vimrc source $MYVIMRC
endif
call plug#begin()
  " COLOR SCHEMES
  Plug 'flazz/vim-colorschemes'

  " GIT
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  
  " PROGRAMMING LANGUAGES
  Plug 'mxw/vim-jsx'
  Plug 'othree/es.next.syntax.vim'
  Plug 'sheerun/vim-polyglot'
  
  " PROGRAMMING TOOLS
  Plug 'honza/vim-snippets'
  Plug 'mattn/emmet-vim'
  Plug 'SirVer/ultisnips'
  Plug 'Townk/vim-autoclose'

  " UTILITIES
  Plug 'scrooloose/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()
" EMMET-VIM
let g:user_emmet_expandabbr_key='<Tab>'

" NERDTREE
" Auto-opening when Vim starts
autocmd VimEnter * NERDTree

" Auto-opening when Vim starts without selecting a specified file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Auto-opening when Vim starts in a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Closing Vim when only NERDTree tab is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeIgnore=['node_modules', 'bower_components', 'tmp', '.git']

" NERDTREE GIT PLUGIN
let g:NERDTreeIndicatorMapCustom = {
  \ "Modified"  : "✹",
  \ "Staged"    : "✚",
  \ "Untracked" : "✭",
  \ "Renamed"   : "➜",
  \ "Unmerged"  : "═",
  \ "Deleted"   : "✖",
  \ "Dirty"     : "✗",
  \ "Clean"     : "✔︎",
  \ 'Ignored'   : '☒',
  \ "Unknown"   : "?"
  \ }

" ULTISNIPS
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"

" VIM-AIRLINE
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'

" VIM-JSX (Supports JSX syntax in React)
let g:jsx_ext_required = 0 " Allow JSX in JS files
filetype on

" CHARSET SETTINGS
set encoding=utf-8
set fileencoding=utf-8

" COMPLETION SETTINGS
set wildchar=<Tab>
set wildignore+=*.DS_STORE,**/node_modules,**/bower_components,**/tmp
set wildmenu
set wildmode=list:longest

" GENERAL SETTINGS
set autoread
set backspace=eol,indent,start
set history=1000
set laststatus=2
set lazyredraw
set mouse=a
set nocompatible
set nowrap
set showcmd
set showmatch
set showmode
set ttyfast
set undolevels=1000
set visualbell

" SEARCH SETTINGS
set hlsearch
set ignorecase
set incsearch
set smartcase
" CUSTOM COMMANDS
:command TEfunctions tabedit ~/.dotfiles/vim/functions.vim
:command TEplugins tabedit ~/.dotfiles/vim/plugins.vim
:command TEsettings tabedit ~/.dotfiles/vim/settings.vim
:command TEshortcuts tabedit ~/.dotfiles/vim/shortcuts.vim
:command TEvisual tabedit ~/.dotfiles/vim/visual.vim
" COLORS AND THEME SETTINGS
set background=dark
colorscheme brogrammer
set cursorcolumn
set cursorline
set expandtab
syntax on

" LINE NUMBERS
set number
set numberwidth=3
set relativenumber

" RULER
set ruler

" SPACING AND TABS
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2

" VISUAL
set autoindent
set copyindent
set textwidth=80
