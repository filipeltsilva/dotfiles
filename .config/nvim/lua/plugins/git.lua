return {
  {
    "lewis6991/gitsigns.nvim",
    config = true,
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = { "LazyGit" },
    keys = {
      { "<leader>gs", "<cmd>:LazyGit<CR>", desc = "Call LazyGit CLI" },
    },
  },
}
