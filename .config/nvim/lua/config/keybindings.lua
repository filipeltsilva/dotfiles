vim.g.mapleader = " "

local options = { noremap = true, silent = true }

vim.keymap.set("", "<C-l>", ":luafile %<CR>", options)

vim.keymap.set("", "<C-s>", ":wa<CR>", options)

vim.keymap.set("n", "<C-h>", "<C-w>h", options)
vim.keymap.set("n", "<C-l>", "<C-w>l", options)

-- NvimTree
vim.keymap.set("", "<leader>e", ":NvimTreeToggle<CR>", options)

-- Telescope
vim.keymap.set("", "<leader>ff", ":Telescope find_files<CR>", options)
vim.keymap.set("", "<leader>fg", ":Telescope live_grep<CR>", options)
