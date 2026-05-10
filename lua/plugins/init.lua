return {
    {
        "williamboman/mason.nvim",
        opts = {},
    },

    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
        },
        opts = {
            ensure_installed = { "rust_analyzer", "ts_ls", "tailwindcss", "clangd", "gopls", "lua_ls", "eslint" },
        },
    },

    {
        'stevearc/oil.nvim',
        opts = {},
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        lazy = false,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = { "BufReadPre", "BufNewFile" },
        opts = {
            ensure_installed = { "c", "lua", "vim", "vimdoc", "cpp", "rust" },
            auto_install = true,
            highlight = {
                enable = true,
            },
        },
    },

    {
        'saghen/blink.cmp',
        dependencies = { 'rafamadriz/friendly-snippets' },
        version = '1.*',
        opts = {
            keymap = { preset = 'super-tab' },
            appearance = {
                nerd_font_variant = 'mono'
            },
            completion = {
                documentation = { auto_show = true },
                list = {
                    selection = { preselect = false, auto_insert = true },
                },
            },
            signature = { enabled = true },
        },
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",

        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
        }
    }
}
