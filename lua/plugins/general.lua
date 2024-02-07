return {
    {
        'mbbill/undotree',
        keys = {
            { '<leader>u', vim.cmd.UndotreeToggle, desc = "undo tree toggle" }
        },
    },
    -- Git intergation
    {
        'tpope/vim-fugitive',
        keys = {
            { "<leader>gs", vim.cmd.Git, desc = "Git" },
        }
    },
    -- error helper
    {
        "folke/trouble.nvim",
        keys = {
            -- Lua
            { "<leader>tt", function() require("trouble").toggle() end,                        desc = "toggle trouble" },
            { "<leader>tw", function() require("trouble").toggle("workspace_diagnostics") end, desc = "toggle trouble workspace " },
        },
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        keys = {
            { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
        },
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    }

}
