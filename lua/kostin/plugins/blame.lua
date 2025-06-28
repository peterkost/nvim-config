return {
	"FabijanZulj/blame.nvim",
	config = function()
		require("blame").setup({})
	end,
	keys = {
		{ "<leader>gb", ":BlameToggle<CR>" },
	},
}
