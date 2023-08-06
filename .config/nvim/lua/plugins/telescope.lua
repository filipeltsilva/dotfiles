return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    defaults = {
      mappings = {
        i = {
          ["<C-k>"] = function() return require("telescope.actions").move_selection_previous end,
          ["<C-j>"] = function() return require("telescope.actions").move_selection_next end
        }
      }
    }
  }
}
