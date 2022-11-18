local status_ok, nvim_tree = pcall(require, "nvim-tree")

if not status_ok then
  return
end

nvim_tree.setup({
  vim.api.nvim_set_keymap( "n",  "t",  ":NvimTreeToggle<CR>", { noremap = true, silent = true }),

  renderer = {
    icons = {
      webdev_colors = true
    }
  }
})
