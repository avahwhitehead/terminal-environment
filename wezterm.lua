-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
local act = wezterm.action

config.default_prog = { '/bin/zsh' }


config.mouse_bindings = {
  -- Right click
  {
    event = { Down = { streak = 1, button = 'Right' } },
    action = wezterm.action_callback(function(window, pane)
      local has_selection = window:get_selection_text_for_pane(pane) ~= ''
      if has_selection then
        window:perform_action(act.CopyTo 'ClipboardAndPrimarySelection', pane)
        window:perform_action(act.ClearSelection, pane)
      else
        window:perform_action(act.PasteFrom 'Clipboard', pane)
      end
    end),
  },
  -- Middle click pastes from selection
  {
    event = { Down = { streak = 1, button = 'Middle' } },
    mods = 'NONE',
    action = act.PasteFrom("PrimarySelection")
  },
  -- Don't copy to clipboard on selection end
  {
    event = { Up = { streak = 1, button = 'Left' } },
    mods = 'NONE',
    action = act.CompleteSelection("PrimarySelection"),
  },
  -- Open link on ctrl + left click
  {
    event = { Up = { streak = 1, button = 'Left' } },
    mods = 'CTRL',
    action = act.CompleteSelectionOrOpenLinkAtMouseCursor("PrimarySelection"),
  },
}

-- and finally, return the configuration to wezterm
return config
