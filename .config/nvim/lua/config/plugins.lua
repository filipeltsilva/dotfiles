local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazy_path) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazy_path,
  })
end
vim.opt.rtp:prepend(lazy_path)

local plugins = {
  "folke/lazy.nvim",

  -- LSP
  {
    "VonHeikemen/lsp-zero.nvim",
     branch = "v2.x",
     dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "onsails/lspkind.nvim"
    }
  },

  -- Autocompletion
--  "hrsh7th/nvim-cmp",
  --dependencies = {
    --"hrsh7th/cmp-buffer",
    --"hrsh7th/cmp-nvim-lsp",
    --"hrsh7th/cmp-nvim-lsp-signature-help",
    --"hrsh7th/cmp-nvim-lua",
    --"hrsh7th/cmp-path",
    --"saadparwaiz1/cmp_luasnip",

    -- Icons
    --"onsails/lspkind.nvim",

    -- Snippets
    --"L3MON4D3/LuaSnip",
    --"rafamadriz/friendly-snippets"
  --}
}

require("lazy").setup("plugins", {
  checker = {
    enabled = true
  },
  defaults = {
    lazy = true
  },
  ui = {
    border = "rounded"
  }
})
