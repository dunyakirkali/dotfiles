local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	color_scheme = "Catppuccin Mocha",
	default_cursor_style = "BlinkingBlock",
	font = wezterm.font("CartographCF Nerd Font"),
	font_size = 16.0,
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	tab_bar_at_bottom = true,
}

-- Keybindings
config.keys = {
	-- splitting
	{
		mods = "SUPER",
		key = "d",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "w",
		mods = "SUPER",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		mods = "SUPER|SHIFT",
		key = "Enter",
		action = wezterm.action.TogglePaneZoomState,
	},
	{
		mods = "SUPER",
		key = "[",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		mods = "SUPER",
		key = "]",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		mods = "SUPER|CTRL|ALT|SHIFT",
		key = "[",
		action = wezterm.action.SwitchWorkspaceRelative(-1),
	},
	{
		mods = "SUPER|CTRL|ALT|SHIFT",
		key = "]",
		action = wezterm.action.SwitchWorkspaceRelative(1),
	},
	{
		key = "9",
		mods = "SUPER|CTRL|ALT|SHIFT",
		action = wezterm.action.ShowLauncherArgs({ flags = "FUZZY|WORKSPACES" }),
	},
	{
		key = "k",
		mods = "SUPER",
		action = wezterm.action.ClearScrollback("ScrollbackAndViewport"),
	},
}

return config
