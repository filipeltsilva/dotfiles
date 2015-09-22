if has('vim_starting')
    if &compatible
	set nocompatible
    endif

    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
    NeoBundleFetch 'Shougo/neobundle.vim'

    NeoBundle 'tpope/vim-fugitive'
call neobundle#end()

NeoBundleCheck
