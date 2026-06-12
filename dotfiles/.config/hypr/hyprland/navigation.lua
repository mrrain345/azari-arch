-- Focus navigation
hl.bind("SUPER + Left", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + Right", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + Up", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + Down", hl.dsp.focus({ direction = "d" }))

-- Window movement
hl.bind("SUPER + SHIFT + Left", hl.dsp.window.move({ direction = "l", group_aware = true }))
hl.bind("SUPER + SHIFT + Right", hl.dsp.window.move({ direction = "r", group_aware = true }))
hl.bind("SUPER + SHIFT + Up", hl.dsp.window.move({ direction = "u", group_aware = true }))
hl.bind("SUPER + SHIFT + Down", hl.dsp.window.move({ direction = "d", group_aware = true }))

-- Workspace switching
for i = 1, 9 do
  hl.bind("SUPER + " .. tostring(i), hl.dsp.focus({ workspace = tostring(i) }))
  hl.bind("SUPER + SHIFT + " .. tostring(i), hl.dsp.window.move({ workspace = tostring(i) }))
end
hl.bind("SUPER + 0", hl.dsp.focus({ workspace = "10" }))
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = "10" }))

-- Group and layout operations
hl.bind("SUPER + slash", hl.dsp.group.toggle())
hl.bind("SUPER + Tab", hl.dsp.layout("swapwithmaster"))
hl.bind("SUPER + SHIFT + Tab", hl.dsp.workspace.swap_monitors({ monitor1 = "current", monitor2 = "+1" }))

-- Toggle floating (mouse button)
hl.bind("SUPER + mouse:272", hl.dsp.window.float({ action = "toggle" }), { click = true })

-- Mouse bindings
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Workspace navigation
require("hyprland/ws_switcher")
hl.bind("SUPER + CTRL + Left", ws_switch_previous)
hl.bind("SUPER + CTRL + Right", ws_switch_next)
hl.bind("SUPER + CTRL + SHIFT + Left", ws_window_move_previous)
hl.bind("SUPER + CTRL + SHIFT + Right", ws_window_move_next)
