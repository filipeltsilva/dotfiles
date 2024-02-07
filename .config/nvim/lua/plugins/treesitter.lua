return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufNewFile", "BufReadPre" },
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "windwp/nvim-ts-autotag",
  },
  build = ":TSUpdate",
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
        "toml",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_decremental = "<bs>",
          node_incremental = "<C-space>",
          scope_incremental = false,
        },
      },
      indent = { enable = true },
    })
  end,
}
