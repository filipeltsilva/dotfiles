return {
  "VonHeikemen/lsp-zero.nvim",
  branch = "v2.x",
  dependencies = {
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim"
  },
  opts = function()
    local servers_list = {
      "bashls",
      "cucumber_language_server",
      "emmet_ls",
      "eslint",
      "html",
      "lua_ls",
      "solargraph",
      "tsserver"
    }

    local lsp_zero = require("lsp-zero")

    lsp_zero.preset("lsp-only")

    lsp_zero.ensure_installed(servers_list)

    lsp_zero.on_attach(function(bufnr, client)
      lsp_zero.default_keymaps({ buffer = bufnr })

      vim.keymap.set("n", "la", function() vim.lsp.buf.code_action() end)
      vim.keymap.set("n", "lc", function() vim.lsp.buf.declaration() end)
      vim.keymap.set("n", "lf", function() vim.lsp.buf.definition() end)
      vim.keymap.set("n", "lh", function() vim.lsp.buf.references() end)
      vim.keymap.set("n", "li", function() vim.lsp.buf.hover() end)
      vim.keymap.set("n", "lm", function() vim.lsp.buf.implementation() end)
      vim.keymap.set("n", "lr", function() vim.lsp.buf.rename() end)
    end)

    lsp_zero.set_sign_icons({
      error = '✘',
      warn = '▲',
      hint = '⚑',
      info = '»'
    })

    lsp_zero.configure("lua_ls", {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }
          }
        }
      }
    })

    lsp_zero.setup()
  end
}
