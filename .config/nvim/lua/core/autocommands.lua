vim.api.nvim_create_autocmd("LspAttach", {
  callback = function()
    vim.keymap.set("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { silent = true })
    vim.keymap.set("n", "<space>dc", "<cmd>lua vim.lsp.buf.declaration()<CR>", { silent = true })
    vim.keymap.set("n", "<space>df", "<cmd>lua vim.lsp.buf.definition()<CR>", { silent = true })
    vim.keymap.set("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", { silent = true })
    vim.keymap.set("n", "<space>h", "<cmd>lua vim.lsp.buf.references()<CR>", { silent = true })
    vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { silent = true })
    vim.keymap.set("n", "<space>im", "<cmd>lua vim.lsp.buf.implementation()<CR>", { silent = true })
    vim.keymap.set("n", "<space>n", "<cmd>lua vim.lsp.buf.rename()<CR>", { silent = true })
  end,
})
