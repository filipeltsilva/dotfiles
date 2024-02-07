return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  lazy = true,
  config = function()
    require("nvim-treesitter.configs").setup({
      textobjects = {
        select = {
          enable = true,
          keymaps = {
            ["oa"] = { query = "@assignment.outer", desc = "Select outer part of an assignment" },
            ["ia"] = { query = "@assignment.inner", desc = "Select inner part of an assignment" },
            ["la"] = { query = "@assignment.lhs", desc = "Select left side of an assignment" },
            ["ra"] = { query = "@assignment.rhs", desc = "Select right side of an assignment" },
            lookahead = true,
          },
        },
      },
    })
  end,
}
