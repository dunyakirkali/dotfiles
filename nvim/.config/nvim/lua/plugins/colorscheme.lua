return {
	{
		"catppuccin/nvim",
		opts = {
			transparent_background = true,
			integrations = {
				cmp = true,
				gitsigns = true,
				treesitter = true,
				notify = true,
				leap = true,
				mason = true,
				neotree = true,
				noice = true,
				telescope = {
					enabled = true,
				},
			},
		},
	},

	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin-mocha",
		},
		lazy = false,
		priority = 1000,
	},
}
