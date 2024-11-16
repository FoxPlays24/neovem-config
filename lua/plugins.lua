-- ========================
--         Install
-- ========================

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'shaunsingh/nord.nvim'
  use { 'akinsho/bufferline.nvim', tag = '*',
        requires = 'nvim-tree/nvim-web-devicons'
    }
  use { 'nvim-lualine/lualine.nvim', requires = 'nvim-tree/nvim-web-devicons' }
  use { 'nvim-tree/nvim-tree.lua', requires = 'nvim-tree/nvim-web-devicons' }
  use { 'goolord/alpha-nvim', requires = { 'echasnovski/mini.icons' },
      config = function ()
        local dashboard = require'alpha.themes.dashboard'
        dashboard.section.footer.val = require'alpha.fortune'()
        require('alpha').setup(dashboard.config)
      end
    }
  use 'Bekaboo/deadcolumn.nvim'
  use 'rcarriga/nvim-notify'
  use 'andweeb/presence.nvim'
  use {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim', -- Bridges between mason and lspconfig
      'neovim/nvim-lspconfig',
      'mfussenegger/nvim-lint',
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    }
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
  use 'petertriho/nvim-scrollbar'
  use 'lewis6991/gitsigns.nvim'
end)

-- ========================
--         Enable
-- ========================

vim.g.nord_italic = false
require('nord').set()
require('bufferline').setup {
    options = {
        show_close_icon = false,
        hover = { enabled = true, delay = 200, reveal = { 'close' } }
      }
  }
require('lualine').setup()
require('nvim-tree').setup()
require'deadcolumn'
require('scrollbar').setup()
require('gitsigns').setup()

-- ========================
--        Configure
-- ========================

require'config/startup'
require'config/mason'
