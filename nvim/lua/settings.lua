local set = vim.o  -- Global set

vim.cmd [[ filetype plugin indent on ]]

set.encoding = 'utf-8'
set.fileencoding = 'utf-8'

set.number = true
set.numberwidth = 4
set.relativenumber = true

set.autoindent = true
set.expandtab = true
set.shiftround = true
set.shiftwidth = 2
set.tabstop = 2

set.hlsearch = true
set.ignorecase = true
set.incsearch = true

set.cursorline = true
set.termguicolors = true
set.wildmenu = true 
set.wildmode = 'longest:list,full'

set.confirm = true

set.autoread = true

set.history = 5000

set.backupdir = '~/.cache/nvim'
set.dir = '~/.cache/nvim'
set.shell = '/usr/bin/zsh'

set.clipboard = 'unnamedplus'
