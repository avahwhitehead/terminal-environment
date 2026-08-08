local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.hide_tab_bar_if_only_one_tab = true

-- Use ZSH shell
config.default_prog = {"/usr/bin/tmux"}

-- Mouse bindings
config.mouse_bindings = {
    -- Right click:
    -- If selection exists: copy selection to BOTH clipboard destinations,
    -- otherwise: paste from the clipboard.
    {
        event = {
			Down = {
				streak = 1,
				button = "Right"
			}
		},
        action = wezterm.action_callback(
            function(window, pane)
                local text = window:get_selection_text_for_pane(pane)
                if text and text ~= "" then
                    window:perform_action(
                        wezterm.action.CopyTo("ClipboardAndPrimarySelection"), pane)
                    -- don't rely on ClearSelection for correctness; only clear after copy
                    window:perform_action(wezterm.action.ClearSelection, pane)
                else
                    window:perform_action(wezterm.action.PasteFrom("Clipboard"), pane)
                end
            end)
    },
	-- Middle click: paste from PRIMARY
    {
        event = {
			Down = {
				streak = 1,
				button = "Middle"
			}
		},
        mods = "NONE",
        action = wezterm.action.PasteFrom("PrimarySelection")
    },
	-- Open link at mouse cursor
    {
        event = {
			Up = {
				streak = 1,
				button = "Left"
			}
		},
        mods = "CTRL",
        action = wezterm.action.CompleteSelectionOrOpenLinkAtMouseCursor("PrimarySelection")
    }
}

-- Keyboard bindings
config.keys = {
	  -- ALT+h : Prefer moving to left split; if none, activate previous tab
    {
        key = "h",
        mods = "ALT",
        action = wezterm.action_callback(
            function(window, pane)
                local tab = window:mux_window():active_tab()
                if tab:get_pane_direction("Left") ~= nil then
                    window:perform_action(
                        wezterm.action.ActivatePaneDirection("Left"),
						pane
					)
                else
                    window:perform_action(
                        wezterm.action.ActivateTabRelative(-1),
						pane
					)
                end
            end
		)
    },
	-- ALT+j : Prefer moving to right split; if none, activate next tab
	{
        key = "j",
        mods = "ALT",
        action = wezterm.action_callback(
            function(window, pane)
                local tab = window:mux_window():active_tab()
                if tab:get_pane_direction("Right") ~= nil then
                    window:perform_action(
                        wezterm.action.ActivatePaneDirection("Right"),
						pane
					)
                else
                    window:perform_action(
						wezterm.action.ActivateTabRelative(1),
						pane
					)
                end
            end
		)
    },
	-- ALT+w : Close current pane without confirmation
	{
        key = "w",
        mods = "ALT",
        action = wezterm.action.CloseCurrentPane({confirm = false})
    },
	-- ALT+t : Spawn a new tab in current pane domain
	{
        key = "t",
        mods = "ALT",
        action = wezterm.action.SpawnTab("CurrentPaneDomain")
    },
	-- CTRL+SHIFT+t : Do nothing
	{
        key = "t",
        mods = "CTRL|SHIFT",
        action = wezterm.action.DisableDefaultAssignment
    },
	-- CTRL+SHIFT+V : Paste from system clipboard into the terminal
	{
        key = "V",
        mods = "CTRL|SHIFT",
        action = wezterm.action.PasteFrom("Clipboard")
    }
}

-- ensure mouse reporting is on
config.enable_kitty_keyboard = true

-- and finally, return the configuration to wezterm
return config
