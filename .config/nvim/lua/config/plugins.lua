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
local status_ok, packer = pcall(require, "packer")

if not status_ok then
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

  -- Language Server Protocol (LSP)
  use {
    "neovim/nvim-lspconfig",

    requires = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim"
    },

    config = function() require("plugins.lsp") end
  }

  -- Code Completion and Snippets
  use {
    "hrsh7th/nvim-cmp",

    requires = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",

      "onsails/lspkind.nvim",

      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets"
    },

    config = function() require("plugins.cmp") end
  }

  -- Telescope (Fuzzy Finder)
  use {
    "nvim-telescope/telescope.nvim",

    requires = {
      "nvim-lua/plenary.nvim"
    },

    config = function() require("plugins.telescope") end
  }

  -- Treesitter (Syntax Highlighting)
  use {
    "nvim-treesitter/nvim-treesitter",

    requires = {
      "JoosepAlviste/nvim-ts-context-commentstring",
      "p00f/nvim-ts-rainbow",
      "windwp/nvim-ts-autotag"
    },

    config = function() require("plugins.treesitter") end,

    run = function() require("nvim-treesitter.install").update({ with_sync = true }) end
  }

  -- File Browser
  use {
    "kyazdani42/nvim-tree.lua",

    requires = {
      "kyazdani42/nvim-web-devicons"
    },

    config = function() require("plugins.nvim-tree") end
  }

  -- Git
  use {
    "lewis6991/gitsigns.nvim",

    config = function() require("plugins.gitsigns") end
  }

  -- Status Bar
  use {
    "nvim-lualine/lualine.nvim",

    config = function() require("plugins.lualine") end
  }

  -- Another Plugins
  use {
    "akinsho/toggleterm.nvim",

    config = function() require("plugins.toggleterm") end
  }

  use {
    "numToStr/Comment.nvim",

    config = function() require("plugins.comment") end
  }

  use {
    "lukas-reineke/indent-blankline.nvim",

    config = function() require("plugins.indentline") end
  }

  use "gpanders/editorconfig.nvim"
  use "m4xshen/autoclose.nvim"

  if packer_bootstrap then
    require("packer").sync()
  end
end)
