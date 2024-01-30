-- plugins/telescope.lua:
return {
	'nvim-telescope/telescope.nvim', tag = '0.1.5',
	keys = {
		{ "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "NeoTree" },
		{ "<leader>pg", "<cmd>Telescope git_files<cr>", desc = "NeoTree" },
		{ "<leader>ps", function() 
			require("telescope.builtin").grep_string({search= vim.fn.input("GREP > ")});
		end
		, desc = "NeoTree" },
	},
	dependencies = { 'nvim-lua/plenary.nvim' }
}
