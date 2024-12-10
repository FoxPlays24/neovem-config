return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			bigfile = { enabled = true },
			notifier = { enabled = true, timeout = 5000 },
			quickfile = { enabled = true },
			statuscolumn = { enabled = true },
			words = { enabled = true },
			dashboard = {
				preset = {
					header = [[
  .-.                                           .-.
  /- \                                           / -\
  /-   \                                         /   -\
 ./=    -\.      .                      .       ./-    =\.
 ┌─────────────────────────────────────────────────────────┐
 │ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗███████╗███╗   ███╗ │
 \\-│ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██╔════╝████╗ ████║ │-//
 .=- │ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║█████╗  ██╔████╔██║ │ -=.
\  │ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██╔══╝  ██║╚██╔╝██║ │  /
.\│ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ███████╗██║ ╚═╝ ██║ │/.
 │ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚══════╝╚═╝     ╚═╝ │
 .└─────────────────────────────────────────────────────────┘.
          ]],
					keys = {
						{ icon = " ", key = "l", desc = "Load Last Session", action = ":SessionLoadLast" },
						{ icon = " ", key = "r", desc = "Recent Files", action = ":Telescope oldfiles" },
						{
							icon = " ",
							key = "f",
							desc = "Find File",
							action = ":cd D:\\cpp-projects | Telescope find_files",
						},
						{ icon = " ", key = "c", desc = "Configure", action = ":e $MYVIMRC" },
						{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
					},
				},
				sections = {
					{ section = "header" },
					{ section = "keys", gap = 1, padding = 1 },
					{ section = "startup" },
				},
			},
		},
	},
}
