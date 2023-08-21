return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-path",
    "saadparwaiz1/cmp_luasnip",

    -- Icons
    "onsails/lspkind.nvim",

    -- Snippets
    "L3MON4D3/LuaSnip",
    "rafamadriz/friendly-snippets"
  },
  opts = function()
    local cmp = require("cmp")
    local lspkind = require("lspkind")
    local luasnip = require("luasnip")

    require("luasnip.loaders.from_vscode").lazy_load()

    luasnip.config.set_config({
      enable_autosnippets = true,
      history = true,
      updateevents = "TextChanged,TextChangedI"
    })

    cmp.setup({
      confirm_opts = {
        behavior = cmp.ConfirmBehavior.Replace,
        select = true
      },
      experimental = {
        ghost_text = true,
        native_menu = false
      },
      formatting = {
        format = lspkind.cmp_format({
          ellipsis_char = "...",
          maxwidth = 50,
          mode = "symbol_text",
          preset = "codicons"
        })
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-k>"] = cmp.mapping.select_prev_item(),

        ["<C-l>"] = cmp.mapping.confirm()
      }),
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end
      },
      sources = cmp.config.sources({
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "nvim_lsp_signature_help" },
        { name = "buffer",  keyword_length = 5 },
        { name = "nvim_lua" },
        { name = "path",    keyword_length = 5 }
      }),
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered()
      }
    })
  end
}
