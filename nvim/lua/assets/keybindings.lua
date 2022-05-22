-- Command Mode Keybindings

-- Insert Mode Keybindings

-- Normal Mode Keybindings
vim.api.nvim_set_keymap('n', '<C-l>', ':luafile %<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-q>', ':q!<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { silent = true })

-- Visual Mode Keybindings
