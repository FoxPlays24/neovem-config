-- ========================
--         Config
-- ========================

require("./lazy")

local g = vim.g
local o = vim.opt

-- Disable netrw
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Disable some warnings
g.loaded_perl_provider = 0
g.loaded_python3_provider = 0

o.number = true -- Show line numbers

o.termguicolors = true -- Enable 24-bit color

o.autochdir = true -- Change working directory to opened file

-- Use spaces instead of tabs
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true

o.colorcolumn = "80"

-- ========================
--         Mappings
-- ========================

-- Save file
vim.cmd([[nnoremap <silent> <leader>w :w<CR>]])

-- Toggle Neotree
vim.cmd([[nnoremap <silent> <leader>n :Neotree toggle<CR>]])

-- Toggle search results highlight
vim.cmd([[nnoremap <silent> <leader>h :set hlsearch!<CR>]])

-- Close current buffer
vim.cmd([[nnoremap <silent> <leader>q :bd<CR>]])
-- Move to previous buffer
vim.cmd([[nnoremap <silent> <leader>; :bp<CR>]])
-- Move to next buffer
vim.cmd([[nnoremap <silent> <leader>' :bn<CR>]])

-- Load the session for the current directory
vim.keymap.set("n", "<leader>qs", function()
	require("persistence").load()
end)

-- ========================
--         Autocmds
-- ========================

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = { "*.as" },
	command = "setlocal syntax=off",
	desc = "Disable syntax highlighting for certain filetypes",
})
