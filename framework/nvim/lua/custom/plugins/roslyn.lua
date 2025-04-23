return {
	{
		"seblyng/roslyn.nvim",
		ft = { "cs", "razor" },
		dependencies = {
			{
				-- By loading as a dependencies, we ensure that we are available to set
				-- the handlers for roslyn
				"tris203/rzls.nvim",
				config = function()
					---@diagnostic disable-next-line: missing-fields
					require("rzls").setup({})
				end,
			},
		},
		config = function()
			require("roslyn").setup({
				args = {
					"--stdio",
					"--logLevel=Information",
					"--extensionLogDirectory=" .. vim.fs.dirname(vim.lsp.get_log_path()),
					"--razorSourceGenerator=" .. vim.fs.joinpath(
						vim.fn.stdpath("data") --[[@as string]],
						"mason",
						"packages",
						"roslyn",
						"libexec",
						"Microsoft.CodeAnalysis.Razor.Compiler.dll"
					),
					"--razorDesignTimePath=" .. vim.fs.joinpath(
						vim.fn.stdpath("data") --[[@as string]],
						"mason",
						"packages",
						"rzls",
						"libexec",
						"Targets",
						"Microsoft.NET.Sdk.Razor.DesignTime.targets"
					),
				},
				config = {
					--[[ the rest of your roslyn config ]]
					handlers = require("rzls.roslyn_handlers"),
				},
			})
		end,
	},
}
