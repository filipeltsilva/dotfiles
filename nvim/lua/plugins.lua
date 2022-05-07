vim.cmd [[ packadd packer.nvim ]]

return require('packer').startup(function()
  use 'airblade/vim-gitgutter'
  use 'gpanders/editorconfig.nvim'
  use 'max-0406/autoclose.nvim'
  use 'wbthomason/packer.nvim'
end)
