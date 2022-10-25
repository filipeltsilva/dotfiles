local status_mason_ok, mason = pcall(require, "mason")
local status_mason_lspconfig_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
local status_lspconfig_ok, lspconfig = pcall(require, "lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

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

local options = { noremap = true, silent = true }

local on_attach = function(client, bufnr)
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", options)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>dc", "<cmd>lua vim.lsp.buf.declaration()<CR>", options)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>df", "<cmd>lua vim.lsp.buf.definition()<CR>", options)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", options)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>h", "<cmd>lua vim.lsp.buf.references()<CR>", options)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>i", "<cmd>lua vim.lsp.buf.hover()<CR>", options)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>im", "<cmd>lua vim.lsp.buf.implementation()<CR>", options)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>n", "<cmd>lua vim.lsp.buf.rename()<CR>", options)
end

if not status_mason_ok then
  return
end

mason.setup({
  max_concurrent_installers = 5,
  ui = {
    border = "rounded",
    check_outdated_packages_on_open = true,
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

if not status_mason_lspconfig_ok then
  return
end

mason_lspconfig.setup({
  automatic_installation = true,
  ensure_installed = language_servers
})

if not status_lspconfig_ok then
  return
end

mason_lspconfig.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      capabilities = capabilities,
      on_attach = on_attach
    })
  end
})
