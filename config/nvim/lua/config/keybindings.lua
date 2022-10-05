local global = vim.g
local map = vim.keymap
local options = { noremap = true, silent = true}

vim.g.mapleader = " "

map.set("", "<C-l>", ":luafile %<CR>", options)

map.set("", "<C-s>", ":wa<CR>", options)

-- Telescope Keybindings
map.set("", "ff", ":Telescope find_files<CR>", options)
map.set("", "lg", ":Telescope live_grep<CR>", options)
