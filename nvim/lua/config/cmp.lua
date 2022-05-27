local cmp = require('cmp')
local lspkind = require('lspkind')
local luasnip = require('luasnip')
local select_opts = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
  completion = {
    autocomplete = true
  },

  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol_text',
      menu = ({
        buffer = '[BUFFER]',
        luasnip = '[LUASNIP]',
        nvim_lsp = '[LSP]',
        nvim_lua = '[LUA]'
      })
    })
  },

  mapping = cmp.mapping.preset.insert({
    [ '<C-o>' ] = cmp.mapping.complete(),
    [ '<C-j>' ] = cmp.mapping.select_next_item(select_opts),
    [ '<C-k>' ] = cmp.mapping.select_prev_item(select_opts),
    [ '<CR>' ] = cmp.mapping.confirm({ select = true }),
    [ '<esc>' ] = cmp.mapping.abort()
  }),

  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end
  },

  sources = cmp.config.sources({
    { name = 'buffer' },
    { name = 'luasnip' },
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
    { name = 'path' }
  }),

  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered()
  }
})
