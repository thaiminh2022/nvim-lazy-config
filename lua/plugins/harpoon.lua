return {

	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = function(self, keys) 
			local harpoon = require("harpoon")

			-- REQUIRED
			harpoon:setup()
			-- REQUIRED
			local mappings = {
				{"<leader>a", function() harpoon:list():append() end, desc = "append"},
				{"<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "toggle_quick_menu"},

				{"<C-a>", function() harpoon:list():select(1) end, desc = "select 1"},
				{"<C-w>", function() harpoon:list():select(2) end, desc = "select 2"},
				{"<C-e>", function() harpoon:list():select(3) end, desc = "select 3"},
				{"<C-s>", function() harpoon:list():select(4) end, desc = "select 4"},
				--
				-- Toggle previous & next buffers stored within Harpoon list
				{"<C-S-P>", function() harpoon:list():prev() end, desc = "previous"},
				{"<C-S-N>", function() harpoon:list():next() end, desc = "next"},


			}


			return mappings;
		end, 
	}
}
