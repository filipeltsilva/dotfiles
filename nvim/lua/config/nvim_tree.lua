local nvim_tree = require('nvim-tree')

nvim_tree.setup({
  vim.api.nvim_set_keymap('n', 't', ':NvimTreeToggle<CR>', { silent = true })
})
