return {
  "kyazdani42/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "File Explorer" },
  },
  opts = {
    renderer = {
      icons = { webdev_colors = true },
      indent_markers = { enable = true },
    },
    view = { width = 40 },
  },
}
