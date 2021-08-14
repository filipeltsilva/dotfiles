syntax on

autocmd BufReadPost * :DetectIndent

autocmd FileType * setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4
