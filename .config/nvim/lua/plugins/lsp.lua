return {
  "neovim/nvim-lspconfig",
  event = { "BufNewFile", "BufReadPre" },
  dependencies = {
    { "antosha417/nvim-lsp-file-operations", config = true },
    "folke/neodev.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local lsp_config = require("lspconfig")
    local lsp_signals = { Error = " ", Hint = "󰠠 ", Info = " ", Warn = " " }
    local my_lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

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

    for type, icon in pairs(lsp_signals) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhtl = "" })
    end

    require("neodev").setup()

    require("mason-lspconfig").setup_handlers({
      function(server)
        lsp_config[server].setup({
          capabilities = my_lsp_capabilities,
        })
      end,
      lsp_config["lua_ls"].setup({
        capabilities = my_lsp_capabilities,
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            runtime = { version = "LuaJIT" },
            telemetry = { enabled = false },
            workspace = { library = vim.env.VIMRUNTIME },
          },
        },
        force_setup = true,
      }),
    })
  end,
}
