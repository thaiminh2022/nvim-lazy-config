require("thaiminh2022");
require("config.lazy");


vim.lsp.enable("rust_analyzer");
vim.lsp.enable("luals");
vim.lsp.enable("gopls");
vim.lsp.enable("clangd");

vim.cmd("colorscheme kanagawa-wave");

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client and client.name == "rust_analyzer" then
            vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
        end
    end,
})

vim.diagnostic.config({
    virtual_lines = true,
    virtual_text = false,
    signs = true,
    underline = true,
    severity_sort = true,
    update_in_insert = false,
})
