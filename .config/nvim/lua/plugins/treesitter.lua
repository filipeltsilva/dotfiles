return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "HiPhish/nvim-ts-rainbow2",
    "windwp/nvim-ts-autotag",
  },
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true,
      ensure_installed = { "lua" },
      sync_install = false,
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
      indent = {
        enable = true,
      },
      rainbow = {
        enable = true,
        strategy = require("ts-rainbow").strategy.global,
      },
    })
  end,
}
