local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())


lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
    --lsp.buffer_autoformat()
end)

vim.keymap.set("n", "<leader>e", function() vim.diagnostic.open_float() end)
vim.keymap.set("n", "<leader>qf", function() vim.lsp.buf.code_action() end)

vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end)
vim.keymap.set("n", "<leader>ty", function() vim.lsp.buf.hover() end)

lsp.setup()
