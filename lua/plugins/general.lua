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
