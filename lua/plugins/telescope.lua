if vim.g.vscode then
    return {}
end

return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    keys =
    {
        { "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "Find files" },
        { "<leader>pg", "<cmd>Telescope git_files<cr>",  desc = "Git files" },
        {
            "<leader>ps",
            function()
                require("telescope.builtin").grep_string({ search = vim.fn.input("GREP > ") });
            end
            ,
            desc = "Grep string"
        },
    },
    dependencies = { 'nvim-lua/plenary.nvim' }
}
