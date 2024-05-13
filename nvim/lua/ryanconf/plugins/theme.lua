return {
	-- Theming nvim
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("ryanconf.custom.colors")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("ryanconf.custom.lualine")
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("ryanconf.custom.nvimtree")
		end,
	},
	{ "nvim-tree/nvim-web-devicons" },
}
