return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>tb", "<cmd>Telescope buffers<CR>", desc = "Find Buffers" },
    { "<leader>tf", "<cmd>Telescope find_files<CR>", desc = "Fuzzy Finder" },
    { "<leader>tg", "<cmd>Telescope live_grep<CR>", desc = "Live Grep" },
    { "<leader>th", "<cmd>Telescope help_tags<CR>", desc = "Neovim Help Docs" },
  },
  config = function()
    local telescope = require("telescope")
    local telescope_actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-k>"] = telescope_actions.move_selection_previous,
            ["<C-j>"] = telescope_actions.move_selection_next,
          },
        },
      },
    })
  end,
}
