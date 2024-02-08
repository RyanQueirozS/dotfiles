return {
    -- Theming nvim
    { 
        "rose-pine/neovim", name = "rose-pine",
        config = function()
            require("ryanconf.custom.colors")
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
