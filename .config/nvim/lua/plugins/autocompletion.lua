return {
  "hrsh7th/nvim-cmp",
  event = { "InsertEnter", "CmdlineEnter" },
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-path",
    "saadparwaiz1/cmp_luasnip",

    "onsails/lspkind.nvim",

    { "L3MON4D3/LuaSnip", version = "v2.*", build = "make install_jsregexp" },
    "rafamadriz/friendly-snippets",
  },
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()

    local cmp = require("cmp")

    cmp.setup({
      formatting = {
        format = require("lspkind").cmp_format({
          ellipsis_char = "...",
          maxwidth = 50,
          mode = "symbol_text",
          preset = "codicons",
        }),
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-h>"] = cmp.mapping.abort(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-l>"] = cmp.mapping.confirm(),
      }),
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      sources = cmp.config.sources({
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "nvim_lsp_signature_help" },
        { name = "buffer", keyword_length = 5 },
        { name = "nvim_lua" },
        { name = "path", keyword_length = 5 },
      }),
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
    })
  end,
}
