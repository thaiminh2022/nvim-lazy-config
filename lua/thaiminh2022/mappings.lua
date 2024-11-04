vim.g.mapleader = " ";
vim.g.maplocalleader = "\\"


vim.g.mapleader = " "
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "move line up" })

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["+p]], { desc = "paste clipboard" })
vim.keymap.set("x", "<leader>y", [["+y]], { desc = "copy clipboard" })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "copy system to clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "copy system to clipboard" })

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set({ "n", "v" }, "<Up>", "<Nop>")
vim.keymap.set({ "n", "v" }, "<Left>", "<Nop>")
vim.keymap.set({ "n", "v" }, "<Right>", "<Nop>")
vim.keymap.set({ "n", "v" }, "<Down>", "<Nop>")
