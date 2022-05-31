vim.cmd 'filetype plugin indent on'

vim.cmd 'set nobackup'

vim.o.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'

vim.o.number = true
vim.o.numberwidth = 4
vim.o.relativenumber = true

vim.o.autoindent = true
vim.o.expandtab = true
vim.o.shiftround = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2

vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.incsearch = true

vim.o.cursorline = true

vim.o.wildmenu = true
vim.o.wildmode = 'longest:list,full'

vim.o.completeopt = 'menu,menuone,noselect'

vim.o.confirm = true

vim.o.autoread = true

vim.o.history = 5000

vim.o.shell = '/usr/bin/zsh'

vim.o.clipboard = 'unnamedplus'
