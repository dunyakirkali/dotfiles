-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Harpoon

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>h", mark.add_file, { desc = "Harpoon" })
vim.keymap.set("n", "<C-h>", ui.toggle_quick_menu, { desc = "Harpoons" })

vim.keymap.set("n", "<C-j>", function()
	ui.nav_file(1)
end)
vim.keymap.set("n", "<C-k>", function()
	ui.nav_file(2)
end)
vim.keymap.set("n", "<C-l>", function()
	ui.nav_file(3)
end)
vim.keymap.set("n", "<C-;>", function()
	ui.nav_file(4)
end)

-- Which Key

local wk = require("which-key")

wk.register({
	["gww"] = { "gw", "Re-wrap" },
})

wk.register({
	["<leader>m"] = { "<leader>m", "Monorepo" },
})
-- Monorepo

vim.keymap.set("n", "<leader>ma", function()
	require("monorepo").add_project()
end, { desc = "Add Project" })

vim.keymap.set("n", "<leader>mr", function()
	require("monorepo").remove_project()
end, { desc = "Remove Project" })

vim.keymap.set("n", "<leader>mm", function()
	require("telescope").extensions.monorepo.monorepo()
end, { desc = "Monorepo" })

vim.keymap.set("n", "<leader>mt", function()
	require("monorepo").toggle_project()
end, { desc = "Toggle Project" })

for i = 1, 9 do
	vim.keymap.set("n", "<leader>m" .. i, function()
		require("monorepo").go_to_project(i)
	end)
end

vim.keymap.set("n", "[m", function()
	require("monorepo").previous_project()
end, { desc = "Previous Project" })

vim.keymap.set("n", "]m", function()
	require("monorepo").next_project()
end, { desc = "Next Project" })
