return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  event = { "VeryLazy" },
  dependencies = {
    "BurntSushi/ripgrep",
    "sharkdp/fd",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },
  keys = {
    { "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "Find Buffers" },
    { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Fuzzy Finder" },
    { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Live Grep" },
    { "<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "Neovim Help Docs" },
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

    telescope.load_extension("fzf")
  end,
}
