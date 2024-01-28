return {
  "kyazdani42/nvim-tree.lua",
  dependencies = {
    "kyazdani42/nvim-web-devicons",
  },
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "File Explorer" },
  },
  config = function()
    require("nvim-tree").setup({
      renderer = {
        icons = {
          webdev_colors = true,
        },
      },
    })
  end,
}
