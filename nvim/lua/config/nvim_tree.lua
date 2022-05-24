require('nvim-tree').setup {
  vim.api.nvim_set_keymap('n', 't', ':NvimTreeToggle<CR>', { silent = true })
}
