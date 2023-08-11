return {
 "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "HiPhish/nvim-ts-rainbow2",
    "JoosepAlviste/nvim-ts-context-commentstring",
    "windwp/nvim-ts-autotag"
  },
  opts = function()
    local configs = require("nvim-treesitter.configs")
    local ts_rainbow = require("ts-rainbow")

    configs.setup({
      auto_install = true,
      ensure_installed = "all",
      sync_install = false,
      autotag = {
        enable = true,
        enable_close = true,
        enable_close_on_slash = true,
        enable_rename = true
      },
      context_commentstring = {
        enable = true
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = true
      },
      indent = {
        enable = true
      },
      rainbow = {
        enable = true,
        strategy = ts_rainbow.strategy.global
      }
    })
  end
}
