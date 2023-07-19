local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end

  return false
end

local packer_bootstrap = ensure_packer()

-- Using a protective call to prevent error in the first use
local packer_status, packer = pcall(require, "packer")

if not packer_status then
  return
end

-- Run Packer in a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

return packer.startup(function(use)
  -- Managing Packer itself
  use "wbthomason/packer.nvim"

  -- Theme
  use "navarasu/onedark.nvim"

  use {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    requires = {
      -- LSP Support
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",

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
    }
  }

  -- Telescope (Fuzzy Finder)
  use {
    "nvim-telescope/telescope.nvim",

    requires = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
    }
  }

  -- Treesitter (Syntax Highlighting)
  use {
    "nvim-treesitter/nvim-treesitter",

    requires = {
      "JoosepAlviste/nvim-ts-context-commentstring",
      "p00f/nvim-ts-rainbow",
      "windwp/nvim-ts-autotag"
    },

    run = function() require("nvim-treesitter.install").update({ with_sync = true }) end
  }

  -- File Browser
  use {
    "kyazdani42/nvim-tree.lua",

    requires = {
      "kyazdani42/nvim-web-devicons"
    }
  }

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- Status Bar
  use "nvim-lualine/lualine.nvim"

  -- Another Plugins
  use "akinsho/toggleterm.nvim"
  use "gpanders/editorconfig.nvim"
  use "lukas-reineke/indent-blankline.nvim"
  use "m4xshen/autoclose.nvim"
  use "numToStr/Comment.nvim"
  use "onsails/lspkind.nvim"

  if packer_bootstrap then
    require("packer").sync()
  end
end)
