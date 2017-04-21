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
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"

" VIM-AIRLINE
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'

" VIM-JSX (Supports JSX syntax in React)
let g:jsx_ext_required = 0 " Allow JSX in JS files
