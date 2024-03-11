return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufEnter", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "windwp/nvim-ts-autotag",
  },
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true,
      ensure_installed = {
        "bash",
        "dockerfile",
        "c",
        "fish",
        "javascript",
        "json",
        "lua",
        "luadoc",
        "make",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "ruby",
        "sql",
        "tmux",
        "toml",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
      ignore_install = {},
      sync_install = false,

      --Modules

      autotag = {
        enable = true,
        enable_close = true,
        enable_close_on_slash = true,
        enable_rename = true,
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_decremental = "<M-space>",
          node_incremental = "<C-space>",
          scope_incremental = "<C-s>",
        },
      },
      indent = { enable = true },
      textobjects = {
        select = {
          enable = true,
          keymaps = {
            ["oa"] = "@assignment.outer",
            ["ia"] = "@assignment.inner",
            ["la"] = "@assignment.lhs",
            ["ra"] = "@assignment.rhs",
            lookahead = true,
          },
        },
      },
    })
  end,
}
