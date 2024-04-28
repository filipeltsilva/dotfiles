return {
  "hrsh7th/nvim-cmp",
  event = { "InsertEnter", "CmdlineEnter" },
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-emoji",
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
      mapping = {
        ["<C-h>"] = cmp.mapping(cmp.mapping.abort(), { "i", "c" }),
        ["<C-j>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "c" }),
        ["<C-k>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "c" }),
        ["<C-l>"] = cmp.mapping.confirm({ select = true, behavior = cmp.ConfirmBehavior.Replace }),
        ["<C-n>"] = cmp.mapping.scroll_docs(4),
        ["<C-p>"] = cmp.mapping.scroll_docs(-4),
      },
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      sources = cmp.config.sources({
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "nvim_lsp_signature_help" },
        { name = "nvim_lua" },
        { name = "path", keyword_length = 5 },
        { name = "buffer", keyword_length = 5 },
        { name = "emoji" },
      }),
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
    })

    cmp.setup.cmdline(":", {
      sources = {
        { name = "cmdline" },
        { name = "path" },
        { name = "buffer" },
      },
    })

    cmp.setup.cmdline("/", {
      sources = {
        { name = "cmdline" },
        { name = "path" },
        { name = "buffer" },
      },
    })
  end,
}
