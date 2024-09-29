local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    -- keybindings are listed here:
    -- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/api-reference.md#default_keymapsopts
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

vim.lsp.inlay_hint.enable(true)
-- Quick mappings setup

vim.keymap.set("n", "<leader>ch", function() vim.lsp.buf.hover() end)
vim.keymap.set("n", "<leader>cd", function()
    if vim.bo.filetype == "rust" then
        vim.cmd.RustLsp('renderDiagnostic')
        return;
    end

    vim.diagnostic.open_float()
end)
vim.keymap.set("n", "<leader>cf", function() vim.lsp.buf.format() end)
vim.keymap.set("n", "<leader>ci", function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled) end)
vim.keymap.set("n", "<leader>ca", function()
    if vim.bo.filetype == "rust" then
        vim.cmd.RustLsp('codeAction')
        return;
    end
    vim.lsp.buf.code_action()
end)

-- Quick rust setup
vim.g.rustaceanvim = {
    server = {
        capabilities = lsp_zero.get_capabilities(),
        default_settings = {
            -- rust-analyzer language server configuration
            ['rust-analyzer'] = {
                checkOnSave = {
                    command = "clippy"
                },
            },
        },
    },
}
-- Quick gdscript setup
require('lspconfig').gdscript.setup({})

lsp_zero.set_sign_icons({
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = '»',
})

require('mason').setup({})
require('mason-lspconfig').setup({
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
        rust_analyzer = lsp_zero.noop,
        gopls = function()
            require('lspconfig').gopls.setup({
                settings = {
                    gopls = {
                        ["ui.inlayhint.hints"] = {
                            compositeLiteralFields = true,
                            constantValues = true,
                            rangeVariableTypes = true,
                            parameterNames = true,
                            assignVariableTypes = true,
                        },
                    }
                }
            })
        end

    }
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

-- from rafamadriz/friendly-snippets
require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
    sources = {
        { name = 'path' },
        { name = 'nvim_lsp' },
        { name = 'luasnip', keyword_length = 2 },
        { name = 'buffer',  keyword_length = 3 },
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        -- confirm completion item
        ['<Enter>'] = cmp.mapping.confirm({ select = true }),

        ['<Tab>'] = cmp_action.luasnip_supertab(),
        ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
    }),
    -- note: if you are going to use lsp-kind (another plugin)
    -- replace the line below with the function from lsp-kind
    formatting = lsp_zero.cmp_format({ details = true }),
})
