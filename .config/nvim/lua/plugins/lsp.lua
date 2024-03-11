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
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      require("mason-tool-installer").setup({
        auto_update = true,
        debounce_hours = 4,
        ensure_installed = {
          -- DAP Servers

          -- Formatters
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

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "folke/neodev.nvim",
      "hrsh7th/cmp-nvim-lsp",

      {
        "williamboman/mason-lspconfig.nvim",
        opts = {
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
            "rubocop",
            "tailwindcss",
            "taplo",
            "tsserver",
            "yamlls",
          },
        },
      },
    },
    config = function()
      local lspconfig = require("lspconfig")
      local my_capabilities = require("cmp_nvim_lsp").default_capabilities()

      require("neodev").setup()

      require("mason-lspconfig").setup_handlers({
        function(server)
          lspconfig[server].setup({
            capabilities = my_capabilities,
          })
        end,
        lspconfig["lua_ls"].setup({
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
              runtime = {
                version = "LuaJIT",
              },
              telemetry = {
                enabled = false,
              },
              workspace = {
                library = vim.env.VIMRUNTIME,
              },
            },
          },
          force_setup = true,
        }),
      })
    end,
  },
}
