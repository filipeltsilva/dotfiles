return {
  "kyazdani42/nvim-tree.lua",
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "File Explorer" },
  },
  config = function()
    require("nvim-tree").setup({
      renderer = {
        icons = { webdev_colors = true },
        indent_markers = { enable = true },
      },
      view = { width = 40 },
    })
  end,
}
