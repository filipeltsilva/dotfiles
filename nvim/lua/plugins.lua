vim.cmd [[ packadd packer.nvim ]]

return require('packer').startup(function()
  use 'airblade/vim-gitgutter'
  use 'wbthomason/packer.nvim'
end)
