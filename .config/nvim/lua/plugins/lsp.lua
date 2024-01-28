return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        max_concurrent_installers = 8,
        ui = {
          border = "rounded",
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
    end,
  },
  {
    "williamboman/mason-lspconfig",
    config = true,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      require("mason-tool-installer").setup({
        auto_update = true,
        ensure_installed = {
          -- LSP Servers
          "bash-language-server",
          "clangd",
          "cucumber-language-server",
          "emmet-language-server",
          "eslint-lsp",
          "html-lsp",
          "lua-language-server",
          "rubocop",
          "typescript-language-server",

          -- DAP Servers

          -- Formatters
          "prettierd",
          "stylua",

          -- Linters
          "eslint_d",
          "shellcheck",
        },
        run_on_start = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local cmp_nvim_lsp = require("cmp_nvim_lsp")
      local lspconfig = require("lspconfig")
      local mason_lspconfig = require("mason-lspconfig")

      local capabilities = cmp_nvim_lsp.default_capabilities()
      local options = { noremap = true, silent = true }
      local on_attach = function(bufnr, client)
        options.buffer = bufnr

        -- See `:help vim.lsp.*` for documentation on any of the below functions
        vim.keymap.set(bufnr, "n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", options)
        vim.keymap.set(bufnr, "n", "<space>dc", "<cmd>lua vim.lsp.buf.declaration()<CR>", options)
        vim.keymap.set(bufnr, "n", "<space>df", "<cmd>lua vim.lsp.buf.definition()<CR>", options)
        vim.keymap.set(bufnr, "n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", options)
        vim.keymap.set(bufnr, "n", "<space>h", "<cmd>lua vim.lsp.buf.references()<CR>", options)
        vim.keymap.set(bufnr, "n", "<space>i", "<cmd>lua vim.lsp.buf.hover()<CR>", options)
        vim.keymap.set(bufnr, "n", "<space>im", "<cmd>lua vim.lsp.buf.implementation()<CR>", options)
        vim.keymap.set(bufnr, "n", "<space>n", "<cmd>lua vim.lsp.buf.rename()<CR>", options)
      end

      local signals = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
      for type, icon in pairs(signals) do
        local highlight = "DiagnosticSign" .. type
        vim.fn.sign_define(highlight, { text = icon, texthl = highlight, numhl = "" })
      end

      mason_lspconfig.setup_handlers({
        function(server_name)
          lspconfig[server_name].setup({
            capabilities = capabilities,
            on_attach = on_attach,
          })

          lspconfig["lua_ls"].setup({
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim" },
                },
              },
            },
          })
        end,
      })
    end,
  },
}
