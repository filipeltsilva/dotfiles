local language_servers = {
  'bashls',
  'cucumber_language_server',
  'emmet_ls',
  'solargraph',
  'sumneko_lua',
  'tsserver'
}
local lsp = require('lspconfig')
local lsp_installer = require('nvim-lsp-installer')

lsp_installer.setup({
  automatic_installation = true,
  ensure_installed = language_servers
})

for _, language in ipairs(language_servers) do
  lsp[language].setup({})
end
