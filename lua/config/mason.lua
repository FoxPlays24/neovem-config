require('mason').setup()
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspc = require'lspconfig'
local servers = { 'lua_ls', 'clangd', 'cmake' }

for _, lsp in ipairs(servers) do
  lspc[lsp].setup { capabilities = capabilities }
end
local cmp = require'cmp'
local map = cmp.mapping
local luasnip = require'luasnip'

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup {
  snippet = {
      expand = function(args)
          luasnip.lsp_expand(args.body)
        end
    },
  mapping = map.preset.insert({
      ['<C-;>'] = map.scroll_docs(-4),
      ['<C-\'>'] = map.scroll_docs(4),
      ['<C-space>'] = map.complete(),
      ['<CR>'] = map.confirm {
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        },
      ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = {
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
    }
}

require('mason-lspconfig').setup {
  ensure_installed = servers
}
require('lint').linters_by_ft = {
    h   = { 'cpplint' },
    hpp = { 'cpplint' },
    cpp = { 'cpplint' },
  }
lspc.clangd.setup{}
lspc.lua_ls.setup{}
lspc.cmake.setup{}
