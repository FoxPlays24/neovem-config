return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = function()
			require("bufferline").setup({})
			numbers = "ordinal"
			indicator = { style = "underline" }
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = function()
			require("lualine").setup({})
		end,
	},
	{
		"NvChad/nvim-colorizer.lua",
		event = "BufReadPre",
		opts = function()
			require("colorizer").setup()
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = function()
			require("gitsigns").setup()
		end,
	},
	{
		"petertriho/nvim-scrollbar",
		opts = function()
			require("scrollbar").setup()
			require("scrollbar.handlers.gitsigns").setup()
		end,
	},
	{
		"Bekaboo/deadcolumn.nvim",
	},
}
