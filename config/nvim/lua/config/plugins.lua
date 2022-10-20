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

  -- Language Server (LSP)
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"

  -- Code Completion
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-nvim-lua"
  use "hrsh7th/cmp-nvim-lsp"
  use "onsails/lspkind.nvim"

  -- Snippets
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"

  -- Telescope (Fuzzy Finder)
  use {
    "nvim-telescope/telescope.nvim",
    requires = {
      "nvim-lua/plenary.nvim"
    }
  }

  -- Treesitter (Syntax Highlighting)
  use {
    "nvim-treesitter/nvim-treesitter",
    run = function() require("nvim-treesitter.install").update({ with_sync = true }) end
  }
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "p00f/nvim-ts-rainbow"
  use "windwp/nvim-ts-autotag"

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

  if packer_bootstrap then
    require("packer").sync()
  end
end)
