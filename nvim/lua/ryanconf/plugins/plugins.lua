return {
	-- Everything in here is in regars to coding and/or note taking

	-- My plugins
	{
		dir = "~/projects/lua/NodeView", -- Your path
		name = "node-view",
		config = function()
			require("node-view")
		end,
	},

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
	{ "voldikss/vim-floaterm" },
	{ "windwp/nvim-ts-autotag" },

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
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			require("ryanconf.custom.formatter")
		end,
	},
}
