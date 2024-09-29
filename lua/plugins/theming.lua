return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = "BufEnter",
        opts = {
            ensure_installed = { "lua", "rust", "html", "css" },
            auto_install = true,
            highlight = {
                enable = true,

            },
        },
        build = ":TSUpdate"
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            vim.cmd("colorscheme rose-pine-moon")
        end,
    },
}
