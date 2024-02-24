local emmet = require("nvim-emmet")

vim.keymap.set({ "n", "v" }, "<leader>hw", emmet.wrap_with_abbreviation)
