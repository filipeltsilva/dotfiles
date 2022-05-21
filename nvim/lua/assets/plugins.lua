vim.cmd 'packadd packer.nvim'

return require('packer').startup(function()
  use'wbthomason/packer.nvim'

  use 'navarasu/onedark.nvim'

  use 'nvim-lualine/lualine.nvim'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'neovim/nvim-lspconfig'

  use 'airblade/vim-gitgutter'
  use 'gpanders/editorconfig.nvim'
  use 'max-0406/autoclose.nvim'
end)
