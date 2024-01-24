-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Maximized window on start up
local mux = wezterm.mux
wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

-- This is where you actually apply your config choices
return {

	-- General
	automatically_reload_config = true,
	inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 },
	window_close_confirmation = "NeverPrompt",

	-- Appearance
	window_background_opacity = 0.85,
	window_decorations = "TITLE | RESIZE",
	enable_tab_bar = true,
	tab_bar_at_bottom = true,
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	enable_scroll_bar = true,
	scrollback_lines = 50000,

	-- Cursor
	default_cursor_style = "BlinkingBar",
	cursor_blink_rate = 750,
	cursor_thickness = "0.85pt",

	-- Fonts
	font = wezterm.font("JetBrainsMono Nerd Font"),
	font_size = 12.0,

	-- Colors
	colors = {
		foreground = "#d3dae3",
		background = "#2f343f",
		cursor_bg = "#d3dae3",
		cursor_fg = "#2f343f",
		cursor_border = "#d3dae3",
		selection_fg = "#2f343f",
		selection_bg = "#d3dae3",
		compose_cursor = "#5294e2",
		scrollbar_thumb = "#2f343f",
		split = "#4877b1",

		ansi = {
			"#4b5164",
			"#e14245",
			"#5ca75b",
			"#f6ab32",
			"#4877b1",
			"#a660c3",
			"#5294e2",
			"#a9a9aa",
		},
		brights = {
			"#4b5164",
			"#e14245",
			"#5ca75b",
			"#f6ab32",
			"#4877b1",
			"#a660c3",
			"#5294e2",
			"#a9a9aa",
		},
	},
}