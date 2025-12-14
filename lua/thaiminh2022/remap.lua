vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
--
-- greatest remap ever
vim.keymap.set("n", "<leader>p", [["+p]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set('i', '<C-Space>', '<C-c><C-o>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-a>', 'gg0vG$');

vim.keymap.set('n', '<leader>ff', "<CMD>Telescope find_files<CR>", { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', "<CMD>Telescope live_grep<CR>", { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fa', "<CMD>Telescope git_files<CR>", { desc = 'Telescope buffers' })
vim.keymap.set('n', 'q:', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('t', 'q:', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fm', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)

-- Run c++ code
vim.keymap.set('n', '<leader>rc', '<cmd> vsplit | terminal g++ -std=c++17 \"%:p\" -o \"%:p:r\" && \"%:p:r\" <cr>');
vim.keymap.set('n', '<leader>rx', function()
    local clipboard = vim.fn.getreg("+")
    local cpesc = string.gsub(vim.fn.shellescape(clipboard), '\n', ' ');
    local output_file = vim.fn.expand("%:p:r")
    --print(cpesc);
    vim.cmd("silent! !g++ -std=c++17 \"%:p\" -o \"%:p:r\"");
    vim.cmd("vsplit");
    vim.cmd("terminal echo '" .. cpesc .. "' | \"" .. output_file .. "\"");
end, { noremap = true, silent = true })

-- Copy code as html
vim.keymap.set('n', '<leader>cc', function()
    vim.cmd("%TOhtml");
    vim.cmd([[silent! normal! ggVG"+y]])
    vim.cmd("bd!")
    print("copied html to clipboard");
end);

-- inlay hints
vim.keymap.set("n", "<leader>ih", function()
    local b = vim.api.nvim_get_current_buf()
    local on = vim.lsp.inlay_hint.is_enabled({ bufnr = b })
    vim.lsp.inlay_hint.enable(not on, { bufnr = b })
end, { desc = "Toggle inlay hints" })
