return {
  "windwp/nvim-ts-autotag",
  lazy = true,
  config = function()
    require("nvim-treesitter.configs").setup({
      autotag = {
        enable = true,
        enable_close = true,
        enable_close_on_slash = true,
        enable_rename = true,
      },
    })
  end,
}
