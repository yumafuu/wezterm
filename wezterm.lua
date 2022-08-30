local wezterm = require 'wezterm'
local act = wezterm.action

return {
  color_scheme = "Teerb",

  window_decorations           = "RESIZE",
  font_size                    = 16.0,
  use_ime                      = true,
  window_background_opacity    = 0.9,
  use_fancy_tab_bar            = false,
  tab_bar_at_bottom            = true,
  disable_default_key_bindings = true,

  leader = { key = 'f', mods = 'CTRL', timeout_milliseconds = 500, },
  keys   = {
    -----------------------
    --  BASIC
    -----------------------
    { key = 'c', mods = 'CMD', action = act.Copy },
    { key = 'v', mods = 'CMD', action = act.Paste },

    -----------------------
    --  PANE
    -----------------------
    { key = 'v', mods = 'LEADER',      action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
    { key = 's', mods = 'LEADER',      action = act.SplitVertical   { domain = 'CurrentPaneDomain' } },
    { key = 'l', mods = 'LEADER',      action = act.ActivatePaneDirection 'Right' },
    { key = 'h', mods = 'LEADER',      action = act.ActivatePaneDirection 'Left' },
    { key = 'j', mods = 'LEADER',      action = act.ActivatePaneDirection 'Down' },
    { key = 'k', mods = 'LEADER',      action = act.ActivatePaneDirection 'Up' },
    { key = 'l', mods = 'LEADER|CTRL', action = act.ActivatePaneDirection 'Right' },
    { key = 'h', mods = 'LEADER|CTRL', action = act.ActivatePaneDirection 'Left' },
    { key = 'j', mods = 'LEADER|CTRL', action = act.ActivatePaneDirection 'Down' },
    { key = 'k', mods = 'LEADER|CTRL', action = act.ActivatePaneDirection 'Up' },

    -----------------------
    --  TAB
    -----------------------
    { key = 'c',          mods = 'LEADER', action = act.SpawnTab 'CurrentPaneDomain' },
    { key = 'n',          mods = 'LEADER', action = act.ActivateTabRelative(1) },
    { key = 'p',          mods = 'LEADER', action = act.ActivateTabRelative(-1) },
    { key = 'LeftArrow',  mods = 'SHIFT',  action = act.AdjustPaneSize {"Left", 2} },
    { key = 'RightArrow', mods = 'SHIFT',  action = act.AdjustPaneSize {"Right", 2} },
    { key = 'UpArrow',    mods = 'SHIFT',  action = act.AdjustPaneSize {"Up", 2} },
    { key = 'DownArrow',  mods = 'SHIFT',  action = act.AdjustPaneSize {"Down", 2} },

    -----------------------
    --  MODE
    -----------------------
    { key = "[", mods = "LEADER", action = act.ActivateCopyMode },
  },

  hyperlink_rules = {
    { regex = '\\b\\w+://[\\w.-]+\\.[a-z]{2,15}\\S*\\b', format = '$0' },
  },
}
