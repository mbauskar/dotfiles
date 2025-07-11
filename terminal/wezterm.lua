-- pull in the wezterm api

local wezterm = require 'wezterm'
local act = wezterm.action

local config = wezterm.config_builder()

config.initial_cols = 255
config.initial_rows = 55
config.font_size = 10
config.hide_tab_bar_if_only_one_tab = true

-- list of all the default key bindings
-- https://wezterm.org/config/default-keys.html

config.keys = {
    {key="d", mods="CTRL|SHIFT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
    {key="e", mods="CTRL|SHIFT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
}

config.mouse_bindings = {
    -- and make CTRL-Click open hyperlinks
    {
        event = { Up = { streak = 1, button = 'Left' } },
        mods = 'CTRL',
        action = act.OpenLinkAtMouseCursor,
    },
}

return config
