vim.keymap.set("n", "<leader>ff", ":Neoformat<CR>")

--vim.cmd([[autocmd BufWritePre *.js,*.css,*.html,*.lua Neoformat]])
vim.cmd([[autocmd BufWritePre *.lua,*.py Neoformat]])
