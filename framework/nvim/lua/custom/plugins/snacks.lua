return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		-- -@type Snacks.Config
		opts = {
			image = {},
			explorer = {},
			picker = {},
			bufdelete = {},
			terminal = {},
			-- statuscolumn = {},
		},
		keys = {
			{
				"<C-e>",
				function()
					Snacks.explorer()
				end,
				desc = "File explorer",
			},
			{
				"<leader>m",
				function()
					Snacks.bufdelete()
				end,
				desc = "Delete current buffer",
			},
			{
				"<C-w>",
				function()
					Snacks.terminal.toggle()
				end,
				desc = "Open terminal",
			},
		},
	},
}
