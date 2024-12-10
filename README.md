# neovem-config

> NEOVEEEEEEEEEEEEEEEEEEEM

This is my personal neovim config, used mainly for C/C++ programming. ✨ Feel free to explore it!

## Installed plugins

- [lazy.nvim](https://github.com/folke/lazy.nvim) — 💤 modern plugin manager for Neovim
- [Nordic](https://github.com/AlexvZyl/nordic.nvim) — color scheme
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) — snazzy 💅 buffer line
- [Neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) — file explorer
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) — statusline
- [snacks.nvim](https://github.com/folke/snacks.nvim) — collection of small QoL plugins for Neovim
- [persisted.nvim](https://github.com/olimorris/persisted.nvim) - 💾 simple session management
- [deadcolumn.nvim](https://github.com/Bekaboo/deadcolumn.nvim) - line that indicates the characters limit
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - fuzzy finder
- [neocord](https://github.com/IogaMaster/neocord) - discord rich presence
- [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua) - color highlighter
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - git decorations for buffers
- [nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar) - scrollbar
<!-- Code -->
- [mason.nvim](https://github.com/williamboman/mason.nvim) - package manager (LSP, DAP, linters, formatters)
- [nvim-lspconfig.nvim](https://github.com/neovim/nvim-lspconfig) - nvim lsp client configs
- [blink.cmp](https://github.com/Saghen/blink.cmp) - code completion
- [conform.nvim](https://github.com/stevearc/conform.nvim) - formatter
- [nvim-lint](https://github.com/mfussenegger/nvim-lint) - linter
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) - snippets
- [mini.pairs](https://github.com/echasnovski/mini.pairs) — auto-pairs
- [Comment.nvim](https://github.com/numToStr/Comment.nvim) - 🧠💪 smart and powerful comment plugin
<!-- Others -->
- [lazydev.nvim](https://github.com/folke/lazydev.nvim) - plugin that properly configures LuaLS for editing neovim config
- [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) - lsp servers installer for lspconfig via mason
- [mason-nvim-lint](https://github.com/rshkarin/mason-nvim-lint) - linters installer for nvim-lint via mason
- [mason-conform.nvim](https://github.com/zapling/mason-conform.nvim) - formatters installer for conform via mason

Not all plugins are included in this list, so you can manually look them up in `lua/plugins/`.

## LSPs

- [lua_ls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#lua_ls) — Lua
- [clangd](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#clangd) — C/C++
- [cmake](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#cmake) — CMake
- [pylsp](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#pylsp) — Python

## Formatters

- [StyLua](https://github.com/JohnnyMorganz/StyLua) - Lua
- [isort](https://github.com/PyCQA/isort), [Black](https://github.com/psf/black) - Python
- [ClangFormat](https://clang.llvm.org/docs/ClangFormat.html) - C/C++
- [Prettier](https://github.com/prettier/prettier) - Markdown

## Linters

- [Pylint](https://pylint.org) - Python
- [cpplint](https://github.com/cpplint/cpplint) — C/C++ _(don't work right now)_
- [CMakeLint](https://github.com/cmake-lint/cmake-lint) - CMake

## Mappings

All listed mappings work in 'Normal' mode only.

`<leader>` key is default `<space>`.

| Keys        | Description                         |
| ----------- | ----------------------------------- |
| `<leader>w` | Save file                           |
| `<leader>n` | nvim-tree.lua: Toggle file explorer |
| `<leader>h` | Toggle search highlighting          |
| `<leader>q` | Close buffer                        |
| `<leader>;` | Move to previous buffer             |
| `<leader>'` | Move to next buffer                 |

## Screenshots
