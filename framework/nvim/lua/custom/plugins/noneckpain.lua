return {
	{
		"shortcuts/no-neck-pain.nvim",
		opts = {
			buffers = {
				-- sratchPad = {
				-- 	enabled = true,
				-- 	location = "~/scratch/",
				-- 	filename = "notes",
				-- },
				bo = {
					filetype = "md",
				},
			},
		},
		keys = {
			{
				"<leader>n",
				function()
					NoNeckPain.toggle()
				end,
				desc = "Toggle NoNeckPain",
			},
		},
	},
}
