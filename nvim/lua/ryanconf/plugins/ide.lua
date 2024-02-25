return {
	-- Everything in here is to make nvim into a full on IDE

	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "neovim/nvim-lspconfig" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "L3MON4D3/LuaSnip" },
	{ "williamboman/mason.nvim" },
	{ "jay-babu/mason-nvim-dap.nvim" },
	{
		"williamboman/mason-lspconfig.nvim",
		config = function(_, _)
			require("ryanconf.custom.lspconfig")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("ryanconf.custom.treesitter")
		end,
	},
	{ "nvim-treesitter/playground" },

	-- git
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"nvim-telescope/telescope.nvim", -- optional
			"sindrets/diffview.nvim", -- optional
			"ibhagwan/fzf-lua", -- optional
		},
		config = function(_, _)
			require("ryanconf.custom.neogit")
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("ryanconf.custom.gitsigns")
		end,
	},
	{ "akinsho/git-conflict.nvim", version = "*", config = true },
	{
		"tpope/vim-fugitive",
		config = function(_, _)
			require("ryanconf.custom.fugitive")
		end,
	},
	-- nvim v0.8.0
	{
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},

	{
		"folke/trouble.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function(_, _)
			require("ryanconf.custom.trouble")
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function(_, _)
			require("ryanconf.custom.telescope")
		end,
	},
	{
		"mfussenegger/nvim-dap",
		config = function(_, _)
			require("ryanconf.custom.dap")
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		requires = { "mfussenegger/nvim-dap" },
	},
}
