return {
	{
		"catppuccin/nvim",
		lazy = false,
		priority = 1000,
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
		config = function(_, opts)
			require("catppuccin").setup(opts)
			require("catppuccin").load()
			vim.cmd("colorscheme catppuccin")
		end,
	},

	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin-mocha",
		},
	},
}
