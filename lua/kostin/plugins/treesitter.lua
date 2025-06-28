return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	branch = "master",
	build = ":TSUpdate",
	main = "nvim-treesitter.configs",
	opts = {
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		auto_install = true,
	},
}
