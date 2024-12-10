return {
	{
		"alexvzyl/nordic.nvim",
		lazy = false,
		priority = 1000,
		opts = function()
			require("nordic").load()
		end,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"muniftanjim/nui.nvim",
		},
		opts = function()
			require("neo-tree").setup({
				window = { width = 30 },
			})
		end,
	},
	{
		"olimorris/persisted.nvim",
		lazy = true,
		config = function()
			require("persisted").setup({
				save_dir = vim.fn.expand(vim.fn.stdpath("data") .. "\\sessions\\"),
			})
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = function()
			require("telescope").load_extension("persisted")
		end,
	},
	{
		"IogaMaster/neocord",
		event = "VeryLazy",
		opts = function()
			require("neocord").setup({
				logo = "https://icons.iconarchive.com/icons/papirus-team/papirus-apps/512/nvim-icon.png",
				logo_tooltip = "=< Neovem >=",
				global_timer = true,
			})
		end,
	},
}
