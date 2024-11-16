# neovem-config

> NEOVE E EEEE EEEEEEEEEEEEE M

This is my personal, kinda minimalist, lil' bit furry flavored Neovim config, intended mainly for C/C++ programming. ✨ Feel free to explore it!

## Features

+ Rad startup screen art where each character & color was written by hand _BLEEEH_
+ Funi + sili misspelled launch notifications & discord status

## Installed plugins

+ [packer.nvim](https://github.com/wbthomason/packer.nvim) — plugin manager _(unmaintained, maybe replace later)_
+ [Nord](https://github.com/nordtheme/nord) — color scheme
+ [presence.nvim](https://github.com/andweeb/presence.nvim) - discord rich presence
+ [alpha-nvim](https://github.com/goolord/alpha-nvim) — startup screen
+ [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - fuzzy finder
+ [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) — a snazzy 💅 buffer line
+ [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) — statusline 
+ [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) — file explorer
+ [nvim-notify](https://github.com/rcarriga/nvim-notify) - pop-up notifications
+ [nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar) - scrollbar
+ [deadcolumn.nvim](https://github.com/Bekaboo/deadcolumn.nvim) - line that indicates the characters limit
<!-- Code -->
+ [mason.nvim](https://github.com/williamboman/mason.nvim) - package manager (LSP, DAP, linters, formaters)
+ [nvim-lspconfig.nvim](https://github.com/neovim/nvim-lspconfig) - nvim lsp client configs
+ [nvim-lint](https://github.com/mfussenegger/nvim-lint) - linter
+ [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - auto-complete
+ [LuaSnip](https://github.com/L3MON4D3/LuaSnip) - snippets
+ [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - git decorations for buffers
<!-- Others -->
+ [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) - luasnip completion source for nvim-cmp
+ [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) - bridges between mason and lspconfig
+ [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - LSP source for nvim-cmp

Required plugins for other plugins are not included in this list, so you can manually look them up in `plugins.lua`.

## LSPs
+ [lua_ls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#lua_ls) — lua
+ [clangd](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#clangd) — C/C++
+ [cmake](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#cmake) — CMake

## Linters
+ [cpplint](https://github.com/cpplint/cpplint) — h, hpp, cpp

## Hotkeys

All listed hotkeys work in 'Normal' mode only.

`<leader>` key is default `\`.

|   Keys     |                Description               |
|------------|------------------------------------------|
|`<space>g`  | Toggle search highlighting               |
|`<space>q`  | Close buffer                             |
|`<M-;>`     | bufferline.nvim: Move to previous buffer |
|`<M-'>`     | bufferline.nvim: Move to next buffer     |
|`<space>;`  | bufferline.nvim: Move buffer back        |
|`<space>;`  | bufferline.nvim: Move buffer next        |
|`<space>n`  | nvim-tree.lua: Toggle file explorer      |
|`<space>m`  | nvim-tree.lua: Change root to current    |
|`<leader>ff`| telescope.nvim: Find file                |
|`<leader>fg`| telescope.nvim: Grep (find text in files)|
|`<leader>fb`| telescope.nvim: Find buffer              |
|`<leader>fh`| telescope.nvim: Find help tag            |
|`<C-;>`     | LuaSnip: Scroll docs back                |
|`<C-\>`     | LuaSnip: Scroll docs next                |
|`<C-space>` | LuaSnip: Show suggestions                |
|`<CR>`      | LuaSnip: Confirm selected suggestion     |
|`<S-Tab>`   | LuaSnip: Move to previous suggesttion    |
|`<Tab>`     | LuaSnip: Move to next suggestion         |

## Screenshots