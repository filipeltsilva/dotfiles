return {
  "folke/tokyonight.nvim",
  priority = 1000,
  opts = function()
    require("tokyonight").setup({
      terminal_colors = true,
      transparent = true,
      styles = {
        comments = { italic = true },
        keywords = { bold = true }
      }
    })
  end
}
