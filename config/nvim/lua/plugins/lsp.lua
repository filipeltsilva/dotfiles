local language_servers = {
  "bashls",
  "cucumber_language_server",
  "emmet_ls",
  "eslint",
  "html",
  "solargraph",
  "sumneko_lua",
  "tsserver"
}
local lsp = require("lspconfig")
local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")

if not status_ok then
  return
end

local on_attach = function(client, bufnr)
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>dc", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>df", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>h", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>i", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>im", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>n", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })
end

lsp_installer.setup({
  automatic_installation = true,
  ensure_installed = language_servers
})

for _, language in ipairs(language_servers) do
  lsp[language].setup({
    on_attach = on_attach
  })
end
