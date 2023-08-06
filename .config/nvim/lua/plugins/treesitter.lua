return {
 "nvim-treesitter/nvim-treesitter",
  build = { function ()
    pcall(require("nvim-treesitter.install").update { with_sync = true })
  end
  },
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
    "p00f/nvim-ts-rainbow",
    "windwp/nvim-ts-autotag"
  },
  opts = {
    auto_install = true,
    ensure_installed = "all",
    sync_install = false,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = true
    },
    indent = {
      enable = true
    },
    autotag = {
      enable = true
    },
    context_commentstring = {
      enable = true
    },
    rainbow = {
      enable = true,
      max_file_lines = nil
    }
  }
}
