local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

vim.keymap.set("n", "<C-c>", "<CMD>nohl<CR>", { desc = "Clear search highlight", silent = true })
vim.keymap.set("n", "<C-l>", "<CMD>echo<CR>", { desc = "Clear last executed command", silent = true })

vim.keymap.set("n", "-", "<CMD>Oil<CR>", opts)
