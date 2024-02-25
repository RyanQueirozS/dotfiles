return {
	-- Theming nvim
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
		config = function()
			require("noice").setup({
				messages = { enabled = false }, -- I really dislike this
				notify = { enabled = false }, -- It's huge and distracting
			})
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("ryanconf.custom.colors")
		end,
	},
	-- {
	-- 	"nvim-tree/nvim-tree.lua",
	-- 	config = function()
	-- 		require("ryanconf.custom.nvimtree")
	-- 	end,
	-- },
	{ "nvim-tree/nvim-web-devicons" },
}
