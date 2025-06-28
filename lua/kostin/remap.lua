vim.g.mapleader = " "

-- view directory
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move selected block up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- scroll half page up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- go to next/previous search result
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- copy to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- search for word under cursor
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- disable keys
vim.keymap.set({ "n", "v" }, "Q", "<nop>")
vim.keymap.set({ "n", "v" }, "q", "<nop>")
