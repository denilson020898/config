local wezterm = require 'wezterm'

local act = wezterm.action
local mux = wezterm.mux

local pane_intensity = 4

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

return {
  window_decorations = "RESIZE",
  -- font = wezterm.font 'LiterationMono Nerd Font',
  font = wezterm.font 'CaskaydiaCove Nerd Font',
  -- font = wezterm.font 'Iosevka Nerd Font',
  color_scheme = 'Gruvbox Dark',
  leader = { key = 'Space', mods = 'CTRL|SHIFT' },
  scrollback_lines = 3500,
  enable_scroll_bar = true,
  audible_bell = "Disabled",
  keys = {
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
      key = 'e',
      mods = 'CMD',
      action = wezterm.action.CloseCurrentPane { confirm = true },
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
  },
}
