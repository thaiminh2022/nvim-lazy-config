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
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { { 'nvim-tree/nvim-web-devicons' }, { 'arkav/lualine-lsp-progress' } },
        opts = {
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diff', 'diagnostics' },
                lualine_c = { 'filename', "lsp_progress" },
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' }
            },
        },
    }
}
