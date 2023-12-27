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
				harpoon = true,
				treesitter_context = true,
				which_key = true,
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
