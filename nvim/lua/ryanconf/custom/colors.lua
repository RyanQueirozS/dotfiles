function ColorMyPencils(color)
	color = color or "cyberdream"
	-- vim.cmd.colorscheme("koehler")
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#00ff00", bold = true })
	vim.api.nvim_set_hl(0, "LineNr", { fg = "#ff0000", bold = true })
	vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#0000ff", bold = true })

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

require("cyberdream").setup({
	transparent = true,
	italic_comments = false,
	hide_fillchars = true,
	borderless_telescope = true,
	terminal_colors = true,
})

ColorMyPencils()
