-- Colourscheme using the carbonfox theme from nightfox.
-- https://github.com/EdenEast/nightfox.nvim
return {
	"EdenEast/nightfox.nvim",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("carbonfox")
	end,
}
