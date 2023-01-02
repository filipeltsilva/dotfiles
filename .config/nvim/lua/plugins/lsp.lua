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

local lspconfig_status, lspconfig = pcall(require, "lspconfig")
local mason_status, mason = pcall(require, "mason")
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")

local on_attach = function(client, bufnr)
  local keymap = vim.keymap
  local options = { noremap = true, silent = true, buffer = bufnr }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", options)
  keymap.set("n", "<leader>dc", "<cmd>lua vim.lsp.buf.declaration()<CR>", options)
  keymap.set("n", "<leader>df", "<cmd>lua vim.lsp.buf.definition()<CR>", options)
  keymap.set("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", options)
  keymap.set("n", "<leader>h", "<cmd>lua vim.lsp.buf.references()<CR>", options)
  keymap.set("n", "<leader>i", "<cmd>lua vim.lsp.buf.hover()<CR>", options)
  keymap.set("n", "<leader>im", "<cmd>lua vim.lsp.buf.implementation()<CR>", options)
  keymap.set("n", "<leader>n", "<cmd>lua vim.lsp.buf.rename()<CR>", options)
end

if not mason_status then
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

if not mason_lspconfig_status then
  return
end

mason_lspconfig.setup({
  automatic_installation = true,
  ensure_installed = language_servers
})

if not lspconfig_status then
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

lspconfig["sumneko_lua"].setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }
      }
    }
  }
})
