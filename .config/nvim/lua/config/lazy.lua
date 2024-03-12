local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazy_path) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazy_path,
  })
end
vim.opt.rtp:prepend(lazy_path)

local lazy_options = {
  change_detection = {
    notify = false,
  },
  checker = {
    enabled = true,
  },
  install = {
    colorscheme = { "tokyonight", "default" },
  },
  ui = {
    border = "rounded",
  },
}

require("lazy").setup("plugins", lazy_options)
