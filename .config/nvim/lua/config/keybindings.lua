vim.g.mapleader = " "

local options = { noremap = true, silent = true }

vim.keymap.set("", "<C-l>", ":luafile %<CR>", options)

vim.keymap.set("", "<C-s>", ":wa<CR>", options)

vim.keymap.set("n", "<C-h>", "<C-w>h", options)
vim.keymap.set("n", "<C-l>", "<C-w>l", options)

vim.keymap.set("n", "<leader>q", ":bd<CR>", options)
