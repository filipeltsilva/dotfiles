return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
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

      require("mason-lspconfig").setup({
        automatic_installation = true,
        ensure_installed = {
          -- Only LSP Servers
          "bashls",
          "clangd",
          "cssls",
          "cucumber_language_server",
          "dockerls",
          "emmet_language_server",
          "eslint",
          "html",
          "jsonls",
          "lua_ls",
          "pyright",
          "ruby_lsp",
          "solargraph",
          "tailwindcss",
          "taplo",
          "tsserver",
          "yamlls",
        },
      })

      require("mason-tool-installer").setup({
        auto_update = true,
        debounce_hours = 4,
        ensure_installed = {
          -- DAP Servers

          -- Formatters
          "black",
          "isort",
          "prettierd",
          "stylua",

          -- Linters
          "eslint_d",
          "shellcheck",
        },
        start_delay = 3000,
      })
    end,
  },
}
