local cmd = vim.cmd
local set = vim.opt

cmd 'filetype plugin indent on'
cmd 'syntax on'

cmd 'set nobackup'

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

set.wildmenu = true
set.wildmode = 'longest:list,full'

set.completeopt = 'menu,menuone,noselect'

set.confirm = true

set.autoread = true

set.history = 5000

set.clipboard = 'unnamedplus'
