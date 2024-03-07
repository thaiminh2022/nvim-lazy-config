return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        opts = {
            variant = "dawn"
        },
        init = function()
            vim.cmd("colorscheme rose-pine")
        end

    }
}
