return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	branch = "master",
	build = ":TSUpdate",
	main = "nvim-treesitter.configs",
	dependencies = { "virchau13/tree-sitter-astro" },
	opts = {
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		auto_install = false,
	},
}
