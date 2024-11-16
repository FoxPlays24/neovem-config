-- ========================
--         Config 
-- ========================

require('plugins')

local g = vim.g
local o = vim.opt
local k = vim.keymap

-- Disable netrw
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

o.number = true -- Show line numbers

o.termguicolors = true -- Enable 24-bit color

o.autochdir = true -- Change working directory to opened file

-- Use spaces instead of tabs
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true

o.colorcolumn = '80'

-- ========================
--         Autocmds
-- ========================

vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
  desc = ':PackerCompile after plugins.lua update',
  pattern = { 'plugins.lua' },
  command = [[ source <afile> | PackerCompile ]]
})

vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  desc = 'Remove trailing spaces',
  pattern = { '*' },
  command = [[ %s/\s\+$//e ]],
})

vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
  desc = 'Make linter to work',
  callback = function()
    require('lint').try_lint()
    require('lint').try_lint('cspell') -- spell check
  end,
})

-- ========================
--         Hotkeys
-- ========================

-- (Toggle highlighting)
k.set('n', '<space>g', ':set hlsearch!<CR>')

-- Close buffer
k.set('n', '<space>q', ':bd<CR>', { silent = true })

-- [bufferline.nvim]
-- Move to previous/next buffer
k.set('n', '<M-;>', ':BufferLineMovePrev<CR>', { silent = true })
k.set('n', '<M-\'>', ':BufferLineMoveNext<CR>', { silent = true })
-- Re-order buffers
k.set('n', '<space>;', ':BufferLineCyclePrev<CR>', { silent = true })
k.set('n', '<space>\'', ':BufferLineCycleNext<CR>', { silent = true })

-- [nvim-tree.lua]
local tree = require 'nvim-tree.api'.tree
local function opts(desc)
  return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true,
           silent = true, nowait = true }
end
-- Toggle file explorer
k.set('n', '<space>n', tree.toggle, {
  silent = true,
  desc = 'toggle nvim-tree',
})
-- Change root to current
k.set('n', '<space>m', tree.change_root_to_parent, opts('Up'))

-- [telescope.nvim]
local builtin = require('telescope.builtin')
-- Find file
k.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
-- Grep (find text in files)
k.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
-- Find buffer
k.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
-- Find help tag
k.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- ... other hotkeys can be seen in 'lua/config/mason.lua'