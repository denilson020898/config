-- Pull in the wezterm API
local wezterm = require 'wezterm'

local act = wezterm.action
local mux = wezterm.mux
local pane_intensity = 4

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'GruvboxDarkHard'
config.font = wezterm.font 'JetBrainsMono Nerd Font'

config.use_ime = false
config.window_decorations = "RESIZE"

config.keys = {
  {
    key = 'd',
    mods = 'CMD',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 's',
    mods = 'CMD',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'w',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentTab { confirm = true },
  },
  {
    key = 'w',
    mods = 'CMD|SHIFT',
    action = wezterm.action.CloseCurrentTab { confirm = false },
  },
  {
    key = 'e',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
  {
    key = 'e',
    mods = 'CMD|SHIFT',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
  {
    key = 'p',
    mods = 'CMD',
    action = wezterm.action.ActivateLastTab,
  },
  {
    key = 'h',
    mods = 'CMD',
    action = act.ActivatePaneDirection 'Left',
  },
  {
    key = 'l',
    mods = 'CMD',
    action = act.ActivatePaneDirection 'Right',
  },
  {
    key = 'k',
    mods = 'CMD',
    action = act.ActivatePaneDirection 'Up',
  },
  {
    key = 'j',
    mods = 'CMD',
    action = act.ActivatePaneDirection 'Down',
  },
  {
    key = 'h',
    mods = 'CMD|SHIFT',
    action = act.AdjustPaneSize { 'Left', 2 * pane_intensity },
  },
  {
    key = 'l',
    mods = 'CMD|SHIFT',
    action = act.AdjustPaneSize { 'Right', 2 * pane_intensity },
  },
  {
    key = 'k',
    mods = 'CMD|SHIFT',
    action = act.AdjustPaneSize { 'Up', 1 * pane_intensity },
  },
  {
    key = 'j',
    mods = 'CMD|SHIFT',
    action = act.AdjustPaneSize { 'Down', 1 * pane_intensity },
  },
  {
    key = ',',
    mods = 'CMD',
    action = act.MoveTabRelative(-1)
  },
  {
    key = '.',
    mods = 'CMD',
    action = act.MoveTabRelative(1)
  },
  {
    key = '8',
    mods = 'CTRL',
    action = act.PaneSelect
  },
  {
    key = '9',
    mods = 'CTRL',
    action = act.PaneSelect {
      alphabet = '1234567890',
    },
  },
  {
    key = '0',
    mods = 'CTRL',
    action = act.PaneSelect {
      mode = 'SwapWithActive',
    },
  },
  {
    key = 'b',
    mods = 'CMD|SHIFT',
    action = act.RotatePanes 'CounterClockwise',
  },
  { key = 'n', mods = 'CTRL|SHIFT', action = act.RotatePanes 'Clockwise' },
  {
    key = 'g',
    mods = 'CMD',
    action = wezterm.action.Search { Regex = '[a-f0-9]{6,}' },
  },
  { key = 'a', mods = 'CMD', action = wezterm.action.QuickSelect },
  { key = 'z', mods = 'CMD', action = wezterm.action.ActivateCopyMode },
}

-- and finally, return the configuration to wezterm
return config
