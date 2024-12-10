return {
	-- Mason
	{
		"williamboman/mason.nvim",
		opts = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = function()
			require("mason-lspconfig").setup()
		end,
	},
	{
		"rshkarin/mason-nvim-lint",
		opts = function()
			require("mason-nvim-lint").setup()
		end,
	},
	{
		"zapling/mason-conform.nvim",
		opts = function()
			require("mason-conform").setup()
		end,
	},
	-- LSP
	{
		"saghen/blink.cmp",
		lazy = false,
		dependencies = "rafamadriz/friendly-snippets",
		version = "v0.*",
		opts = {
			keymap = {
				preset = "default",

				["<A-1>"] = {
					function(cmp)
						cmp.accept({ index = 1 })
					end,
				},
				["<A-2>"] = {
					function(cmp)
						cmp.accept({ index = 2 })
					end,
				},
				["<A-3>"] = {
					function(cmp)
						cmp.accept({ index = 3 })
					end,
				},
				["<A-4>"] = {
					function(cmp)
						cmp.accept({ index = 4 })
					end,
				},
				["<A-5>"] = {
					function(cmp)
						cmp.accept({ index = 5 })
					end,
				},
				["<A-6>"] = {
					function(cmp)
						cmp.accept({ index = 6 })
					end,
				},
				["<A-7>"] = {
					function(cmp)
						cmp.accept({ index = 7 })
					end,
				},
				["<A-8>"] = {
					function(cmp)
						cmp.accept({ index = 8 })
					end,
				},
				["<A-9>"] = {
					function(cmp)
						cmp.accept({ index = 9 })
					end,
				},
				["<A-0>"] = {
					function(cmp)
						cmp.accept({ index = 10 })
					end,
				},

				["<C-s>"] = { "show", "show_documentation", "hide_documentation" },
			},

			completion = {
				menu = {
					draw = {
						columns = { { "item_idx" }, { "kind_icon" }, { "label", "label_description", gap = 6 } },
						components = {
							item_idx = {
								text = function(ctx)
									return tostring(ctx.idx)
								end,
								highlight = "BlinkCmpItemIdx",
							},
							label_description = {
								width = { max = 30 },
								text = function(ctx)
									return ctx.label_description
								end,
								highlight = "BlinkCmpLabelDescription",
							},
						},
					},
				},
			},
			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = "mono",
			},
			sources = {
				completion = {
					enabled_providers = { "lsp", "path", "snippets", "buffer" },
				},
			},
			opts_extend = { "sources.completion.enabled_providers" },
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp", "L3MON4D3/LuaSnip" },
		opts = {
			servers = {
				lua_ls = {},
				clangd = {},
				cmake = {},
				pylsp = {},
			},
			snippets = {
				expand = function(snippet)
					require("luasnip").lsp_expand(snippet)
				end,
				active = function(filter)
					if filter and filter.direction then
						return require("luasnip").jumpable(filter.direction)
					end
					return require("luasnip").in_snippet()
				end,
				jump = function(direction)
					require("luasnip").jump(direction)
				end,
			},
			sources = {
				completion = {
					enabled_providers = { "lsp", "path", "luasnip", "buffer", "lazydev" },
				},
				providers = {
					lsp = { fallback_for = { "lazydev" } },
					lazydev = { name = "LazyDev", module = "lazydev.integrations.blink" },
				},
			},
		},
		config = function(_, opts)
			local lspconfig = require("lspconfig")
			for server, config in pairs(opts.servers) do
				config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
				lspconfig[server].setup(config)
			end
		end,
	},
	{
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
		},
	},
	-- Formatter
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "isort", "black" },
					cpp = { "clang-format" },
					markdown = { "prettier" },
				},
				format_on_save = {
					lsp_fallback = true,
					async = false,
					timeout_ms = 500,
				},
			})
		end,
	},
	-- Linter
	{
		"mfussenegger/nvim-lint",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local lint = require("lint")
			lint.linters_by_ft = {
				python = { "pylint" },
				cmake = { "cmakelint" },
				cpp = { "cpplint" },
				-- as = { "cpplint" }, -- AngelScript (for Sven Co-op modding)
			}
			local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
			vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
				group = lint_augroup,
				callback = function()
					lint.try_lint()
					lint.try_lint("codespell")
				end,
			})
		end,
	},
	{
		"echasnovski/mini.pairs",
		version = "*",
		opts = function()
			require("mini.pairs").setup()
		end,
	},
	{
		"numToStr/Comment.nvim",
		opts = function()
			require("Comment").setup()
		end,
	},
}
