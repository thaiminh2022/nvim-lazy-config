return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = "BufEnter",
        opts = {
            ensure_installed = { "lua", "rust", "html", "css" },
            auto_install = true,
        },
        build = ":TSUpdate",
        config = function()
            vim.cmd("TSEnable highlight")
        end
    },
    {
        "xiyaowong/transparent.nvim"
    }
}
