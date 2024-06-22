-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Which Key
local wk = require("which-key")

wk.register({
	["gww"] = { "gw", "Re-wrap" },
})

wk.register({
	["<leader>m"] = { "<leader>m", "Monorepo" },
})

vim.api.nvim_set_keymap("i", "<C-/>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
