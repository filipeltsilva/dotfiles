vim.cmd 'packadd packer.nvim'

return require('packer').startup(function()
  use'wbthomason/packer.nvim'

  use 'airblade/vim-gitgutter';
  use 'gpanders/editorconfig.nvim';
  use 'max-0406/autoclose.nvim';
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)

