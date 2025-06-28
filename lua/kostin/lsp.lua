vim.lsp.enable({ "ruff", "basedpyright", "typescript-language-server", "astro-language-server" })

vim.keymap.set("n", "<leader>e", function()
	vim.diagnostic.open_float()
end)
vim.keymap.set("n", "<leader>qf", function()
	vim.lsp.buf.code_action()
end)

vim.keymap.set("n", "<leader>rn", function()
	vim.lsp.buf.rename()
end)
vim.keymap.set("n", "<leader>ty", function()
	vim.lsp.buf.hover()
end)

vim.diagnostic.config({
	virtual_text = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = true,
	},
})

vim.opt.completeopt:append({ "noselect", "menuone", "fuzzy" })

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method("textDocument/completion") then
			-- trigger autocompletion on EVERY keypress
			local chars = {}
			for i = 32, 126 do
				table.insert(chars, string.char(i))
			end
			client.server_capabilities.completionProvider.triggerCharacters = chars
			vim.lsp.completion.enable(true, client.id, ev.buf, {
				autotrigger = true,
			})
		end
	end,
})
