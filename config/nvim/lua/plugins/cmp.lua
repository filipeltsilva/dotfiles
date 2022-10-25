local cmp_status_ok, cmp = pcall(require, "cmp")
local luasnip_status_ok, luasnip = pcall(require, "luasnip")

if not cmp_status_ok then
  return
end

if not luasnip_status_ok then
  return
end

local lspkind = require("lspkind")

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
    ghost_text = true
  },

  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = lspkind.cmp_format({
      mode = "symbol",
      menu = ({
        buffer = "[Buffer]",
        luasnip = "[LuaSnip]",
        nvim_lsp = "[LSP]",
        nvim_lua = "[Lua]",
        path = "[Path]"
      })
    })
  },

  mapping = cmp.mapping.preset.insert({
    ["<Down>"] = cmp.mapping.select_next_item(),
    ["<Up>"] = cmp.mapping.select_prev_item(),

    ["<Right>"] = cmp.mapping.confirm()
  }),

  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end
  },

  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "nvim_lua" },
    { name = "path" }
  },

  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered()
  }
})

require("luasnip.loaders.from_vscode").lazy_load()
