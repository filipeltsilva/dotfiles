" RELOADING .vimrc FILE WHEN IT'S SAVED
if has('autocmd')
    autocmd BufWritePost ~/.vimrc source $MYVIMRC
endif

