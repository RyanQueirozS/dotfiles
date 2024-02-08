return {
	-- Everything in here is in regars to coding and/or note taking

	-- Cool to have
	{
		"ThePrimeagen/harpoon",
		config = function(_, _)
			require("ryanconf.custom.harpoon")
		end,
	},
	{ "nvim-pack/nvim-spectre" },
	{
		"m4xshen/autoclose.nvim",
		config = function()
			require("ryanconf.custom.autoclose")
		end,
	},
	{
		"numToStr/Comment.nvim",
		config = function(_, _)
			require("ryanconf.custom.comment")
		end,
	},
	{
		"ggandor/leap.nvim",
		config = function(_, _)
			require("ryanconf.custom.leap")
		end,
	},
	{ "mbbill/undotree" },
	{ "christoomey/vim-tmux-navigator" },
	{ "RaafatTurki/hex.nvim" },

	-- Notes
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
	{ "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
	{ "vimwiki/vimwiki" },

	-- Formatting
	{
		"nvimtools/none-ls.nvim",
		config = function()
			require("ryanconf.custom.nonels")
		end,
		requires = { "nvim-lua/plenary.nvim" },
	},
}
