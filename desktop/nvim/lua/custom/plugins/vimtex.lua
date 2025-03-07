return {
	"lervag/vimtex",
	ft = "tex",
	config = function()
		vim.g.vimtex_view_method = "zathura"
		vim.g.vimtex_compiler_engine = "pdflatex"
		vim.g.vimtex_quickfix_open_on_warning = 0
	end,
}
