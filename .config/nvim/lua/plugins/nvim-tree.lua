local nvim_tree_status, nvim_tree = pcall(require, "nvim-tree")

if not nvim_tree_status then
  return
end

nvim_tree.setup({
  renderer = {
    icons = {
      webdev_colors = true
    }
  }
})
