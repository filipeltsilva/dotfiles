return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "moon",
      styles = {
        keywords = {
          bold = true,
          italic = false,
        },
      },
      transparent = true,
    })

    vim.cmd("colorscheme tokyonight")
  end,
}
