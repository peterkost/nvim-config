return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>ff",
			function()
				require("conform").format({ async = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	opts = {
		log_level = vim.log.levels.DEBUG,
		formatters_by_ft = {
			lua = { "stylua" },
			python = {
				"ruff_fix",
				"ruff_format",
				"ruff_organize_imports",
			},
			javascript = { "prettierd" },
			javascriptreact = { "prettierd" },
			typescript = { "prettierd" },
			typescriptreact = { "prettierd" },
			css = { "prettierd" },
			scss = { "prettierd" },
			html = { "prettierd" },
			json = { "prettierd" },
			yaml = { "prettierd" },
			markdown = { "prettierd" },
		},
		formatters = {
			prettierd = {
				command = "prettierd",
				--prepend_args = { "--loglevel", "debug" },
			},
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
		format_on_save = { timeout_ms = 500 },
	},
}
