"----------------------------------------
" PLUGINS
"----------------------------------------
call plug#begin()
    " COLOR SCHEMES
    Plug 'flazz/vim-colorschemes'

    " IMPROVING THE VIM FUNCTIONALITY
    Plug 'ervandew/supertab'
    Plug 'junegunn/vim-easy-align'
    Plug 'scrooloose/nerdtree'
    Plug 'Shougo/neocomplete.vim'
    Plug 'Townk/vim-autoclose'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " CSS
    Plug 'ap/vim-css-color'

    " FRONT-END
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'mattn/emmet-vim'
    Plug 'wavded/vim-stylus'

    " INTEGRATION WITH GIT
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'

    " SNIPPETS
    Plug 'honza/vim-snippets'
    Plug 'SirVer/ultisnips'
call plug#end()

"----------------------------------------
" PLUGIN SETTINGS
"----------------------------------------
" Vim Airline
if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts=1
let g:airline_left_sep='>'
let g:airline_right_sep='<'

" Neocomplete settings
let g:acp_enableAtStartup=0
let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_smart_case=1
let g:neocomplete#sources#syntax#min_keyword_length=3

"NERDTree
map <F2> :NERDTreeToggle<CR>

" Ultisnips settings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsEditSplit="vertical"

"SCSS Syntax
autocmd FileType scss set iskeyword+=-
