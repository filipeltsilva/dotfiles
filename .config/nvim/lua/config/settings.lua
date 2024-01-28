local editor_options = {
  encoding = "utf-8",
  fileencoding = "utf-8",

  background = "dark",
  termguicolors = true,

  number = true,
  numberwidth = 4,
  relativenumber = true,

  autoindent = true,
  expandtab = true,
  shiftround = true,
  shiftwidth = 2,
  softtabstop = 2,
  tabstop = 2,

  hlsearch = true,
  ignorecase = true,
  incsearch = true,

  autoread = true,
  clipboard = "unnamed,unnamedplus",
  cmdheight = 2,
  completeopt = "menu,menuone,noselect",
  confirm = true,
  cursorline = true,
  history = 5000,
  signcolumn = "yes",
  splitright = true,
  timeoutlen = 200,
  updatetime = 100,

  wildmenu = true,
  wildmode = "longest:list,full",
}

for key, value in pairs(editor_options) do
  vim.opt[key] = value
end

vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")

vim.cmd("set nobackup")
