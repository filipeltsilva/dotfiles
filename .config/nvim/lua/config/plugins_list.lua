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

-- Using a protective call to prevent error in the first
local lazy_status, lazy = pcall(require, "lazy")

if not lazy_status then
  return
end

local options = {}
local plugins = {
  {
    "navarasu/onedark.nvim",
    lazy = true,
    priority = 1000
  },
  "akinsho/toggleterm.nvim",
  "gpanders/editorconfig.nvim",
  "lukas-reineke/indent-blankline.nvim",
  "m4xshen/autoclose.nvim",
  "numToStr/Comment.nvim",

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
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-nvim-lsp-signature-help",
  "hrsh7th/cmp-nvim-lua",
  "hrsh7th/cmp-path",
  "saadparwaiz1/cmp_luasnip",

  -- Snippets
  "L3MON4D3/LuaSnip",
  "rafamadriz/friendly-snippets",

  -- Telescope (Fuzzy Finder)
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
    }
  },

  -- Syntax Highlight
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
      "p00f/nvim-ts-rainbow",
      "windwp/nvim-ts-autotag"
    },

    run = function() require("nvim-treesitter.install").update({ with_sync = true }) end
  },

  -- File Explorer
  {
    "kyazdani42/nvim-tree.lua",
    dependencies = {
      "kyazdani42/nvim-web-devicons"
    }
  },

  -- Git
  "lewis6991/gitsigns.nvim",

  -- Status Bar
  "nvim-lualine/lualine.nvim",
}

lazy.setup(plugins, options)
