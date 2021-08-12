" RELOADING .vimrc FILE WHEN IT'S SAVED
if has('autocmd')
    autocmd BufWritePost ~/.vimrc source $MYVIMRC
endif

for file in split(glob('$HOME/.dotfiles/vim/*.vim'), '\n')
	exe 'source' file
endfor
