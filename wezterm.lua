local wezterm = require 'wezterm'
local config = wezterm.config_builder()
-- Theme
config.color_scheme = 'AdventureTime'

-- Cwd
--config.default_cwd = "C:\\Program Files\\WezTerm-windows-20250103-121535-8e9cf912"

-- Background
config.window_background_opacity = 1.0
config.macos_window_background_blur = 20
-- config.window_background_image = './background/bg.jpg'
local dimmer = {
    -- Darken the background image by reducing it to 1/3rd
  brightness = 0.1,

  -- You can adjust the hue by scaling its value.
  -- a multiplier of 1.0 leaves the value unchanged.
  hue = 1.0,

  -- You can adjust the saturation also.
  saturation = 1.0,
}
config.background = { 
    {
        source = { 
            File = 'C:\\Program Files\\WezTerm-windows-20250103-121535-8e9cf912\\background\\bg.jpg',
        },
        height = 'Cover',
        hsb = dimmer
    }
}


-- Font
config.font = wezterm.font('JetBrainsMono Nerd Font Mono', { weight = 'DemiBold', italic = false })
config.font_size = 10

-- Windows
--config.window_decorations = 'NONE'

-- Keymap
config.keys = {
    {
        key = 'w',
        mods = 'CTRL|SHIFT|ALT',
        action = wezterm.action.CloseCurrentPane { confirm = false }
    }
}

-- Custom Env
config.set_environment_variables = {
    dattruong = 'dat truong tan env'
}
return config
