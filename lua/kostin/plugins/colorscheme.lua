return {
	"folke/tokyonight.nvim",
	--version = false,
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme tokyonight]])
	end,
}
