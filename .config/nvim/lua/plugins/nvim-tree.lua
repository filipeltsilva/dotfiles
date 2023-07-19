local nvim_tree_status_ok, nvim_tree = pcall(require, "nvim-tree")

if not nvim_tree_status_ok then
  return
end

nvim_tree.setup({
  renderer = {
    icons = {
      webdev_colors = true
    }
  }
})
