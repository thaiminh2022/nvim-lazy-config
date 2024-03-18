if vim.g.vscode then
    return {}
end

local hour = os.date("*t").hour

local theme = "main"
if hour >= 6 and  hour <= 17 then
    theme = "dawm"
end



return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        opts = {
            variant = theme
        },
        init = function()
            vim.cmd("colorscheme rose-pine")
        end

    }
}
