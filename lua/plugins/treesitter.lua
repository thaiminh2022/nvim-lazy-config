return {
	{
		'nvim-treesitter/nvim-treesitter', 
		build = ":TSUpdate",
		config = function() 
			local configs = require("nvim-treesitter.configs")

			configs.setup(
			{
				ensure_installed = { "lua", "vim", "c_sharp", "rust", "query" },
				auto_install = true,

				highlight = {
					enable = true,
				}
			})
		end,
	}
}
