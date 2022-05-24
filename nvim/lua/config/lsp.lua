local language_servers = {
  'bashls',
  'cucumber_language_server',
  'emmet_ls',
  'solargraph',
  'sumneko_lua',
  'tsserver'
}

require('nvim-lsp-installer').setup {
  automatic_installation = true,
  ensure_installed = language_servers
}

for _, language in ipairs(language_servers) do
  require('lspconfig')[language].setup {}
end
