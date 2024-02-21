vim.keymap.set("n", "<leader>ff", ":Neoformat<CR>")

vim.cmd [[autocmd BufWritePre *.js Neoformat]]
vim.cmd [[autocmd BufWritePre *.css Neoformat]]
vim.cmd [[autocmd BufWritePre *.html Neoformat]]
