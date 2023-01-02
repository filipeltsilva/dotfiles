vim.g.mapleader = " "

local keymap = vim.keymap
local options = { noremap = true, silent = true }

keymap.set("", "<C-l>", ":luafile %<CR>", options)

keymap.set("", "<C-s>", ":wa<CR>", options)

-- NvimTree
keymap.set("", "<leader>e", ":NvimTreeToggle<CR>", options)

-- Telescope
keymap.set("", "<leader>ff", ":Telescope find_files<CR>", options)
keymap.set("", "<leader>lg", ":Telescope live_grep<CR>", options)
