return {

    cmd = { "tailwindcss-language-server", "--stdio" },
    root_dir = function(bufnr, on_dir)
        local fname = vim.api.nvim_buf_get_name(bufnr)
        local root = vim.fs.dirname(vim.fs.find({
            "package.json",
            "tailwind.config.js",
            "tailwind.config.cjs",
            "tailwind.config.mjs",
            "tailwind.config.ts",
            "postcss.config.js",
            "postcss.config.cjs",
            ".git",
        }, { upward = true, path = fname })[1])

        on_dir(root)
    end,
}
