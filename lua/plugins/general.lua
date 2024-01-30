return  {
	{
		'mbbill/undotree',
		keys = {
			{'<leader>u', vim.cmd.UndotreeToggle, desc = "undo tree toggle"}
		},
	},
	-- Git intergation
	{
		'tpope/vim-fugitive',
		keys = {
			{"<leader>gs", vim.cmd.Git, desc = "Git"},
		}
	}
}
