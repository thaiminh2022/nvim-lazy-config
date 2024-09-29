return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		lazy = true,
		dependencies = { 'nvim-lua/plenary.nvim' },
		keys = function()
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>fa', builtin.find_files, {})
			vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
		end,
	},
	{
		'stevearc/oil.nvim',
		lazy = true,
		opts = {
			default_file_explorer = false
		},
		dependencies = { 'nvim-tree/nvim-web-devicons', opts = {} },
		keys = { { "<leader>e", "<cmd>Oil<cr>", desc = "NeoTree" } },
	},
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		lazy = true,
		keys = function()
			local harpoon = require("harpoon")
			harpoon.setup();

			vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
			vim.keymap.set("n", "<leader>he", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

			vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
			vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
			vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
			vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)
		end,
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
        "cohama/lexima.vim",
        lazy = true,
        event = "BufEnter"
    }

}

