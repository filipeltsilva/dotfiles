return {
  "lukas-reineke/indent-blankline.nvim",
  opts = function()
    require("indent_blankline").setup({
      show_current_context = true,
      show_current_context_start = true
    })
  end
}
