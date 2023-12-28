return {
	"imNel/monorepo.nvim",
	config = function()
		require("monorepo").setup({
			silent = true, -- Supresses vim.notify messages
			autoload_telescope = true, -- Automatically loads the telescope extension at setup
			data_path = vim.fn.stdpath("data"), -- Path that monorepo.json gets saved to
		})
	end,
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
	},
}
