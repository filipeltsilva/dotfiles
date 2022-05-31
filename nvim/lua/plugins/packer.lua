local use = require('packer').use

vim.cmd 'packadd packer.nvim'

require('packer').startup(function()
  use'wbthomason/packer.nvim'

  use 'navarasu/onedark.nvim'

  use 'nvim-lualine/lualine.nvim'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'onsails/lspkind.nvim'

  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  use 'airblade/vim-gitgutter'
  use 'gpanders/editorconfig.nvim'
  use 'max-0406/autoclose.nvim'
end)
