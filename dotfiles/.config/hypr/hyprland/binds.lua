-- Keybindings configuration

-- Applications
hl.bind("SUPER + Return", hl.dsp.exec_cmd("uwsm app -- ghostty"))
hl.bind("SUPER + B", hl.dsp.exec_cmd("uwsm app -- flatpak run com.google.Chrome"))
hl.bind("SUPER + CTRL + B", hl.dsp.exec_cmd("uwsm app -- flatpak run com.google.Chrome --incognito"))
hl.bind("SUPER + V", hl.dsp.exec_cmd("uwsm app -- code"))
hl.bind("SUPER + CTRL + V", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call plugin:vscode-provider toggle"))
hl.bind("SUPER + F", hl.dsp.exec_cmd("uwsm app -- nautilus --new-window"))
hl.bind("SUPER + M", hl.dsp.exec_cmd("uwsm app -- flatpak run org.signal.Signal"))
hl.bind("SUPER + K", hl.dsp.exec_cmd("uwsm app -- flatpak run org.gnome.Calculator"))
hl.bind("SUPER + T", hl.dsp.exec_cmd("uwsm app -- flatpak run org.gnome.TextEditor"))

-- Launcher and utilities
hl.bind("SUPER + A", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call launcher toggle"))
hl.bind("SUPER + SEMICOLON", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call launcher emoji"))

-- System control
hl.bind("SUPER + CTRL + Escape", hl.dsp.exec_cmd("hyprshutdown -p 'systemctl poweroff'"))
hl.bind("SUPER + CTRL + R", hl.dsp.exec_cmd("hyprshutdown -p 'systemctl reboot'"))
hl.bind("SUPER + ALT + R", hl.dsp.exec_cmd("hyprshutdown -p 'uwsm stop'"))
hl.bind("SUPER + CTRL + L", hl.dsp.exec_cmd("uwsm app -- hyprlock"))

-- Window management
hl.bind("SUPER + X", hl.dsp.window.close())
hl.bind("SUPER + CTRL + X", hl.dsp.window.kill())
hl.bind("F11", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))

-- Screenshots
require("utils/screenshot")
hl.bind("Print", screenshot("region"))
hl.bind("SUPER + Print", screenshot("window"))
hl.bind("SUPER + CTRL + Print", screenshot("output"))

-- Audio control
require("utils/audio")
hl.bind("XF86AudioMute", toggle_mute("speaker"))
hl.bind("XF86AudioMicMute", toggle_mute("microphone"))
hl.bind("SUPER + F9", toggle_mute("speaker"))
hl.bind("SUPER + ALT + F9", toggle_mute("microphone"))

-- Volume control
hl.bind("XF86AudioLowerVolume", adjust_volume("speaker", "down", 5), { repeating = true })
hl.bind("XF86AudioRaiseVolume", adjust_volume("speaker", "up", 5), { repeating = true })
hl.bind("SUPER + F10", adjust_volume("speaker", "down", 5), { repeating = true })
hl.bind("SUPER + F11", adjust_volume("speaker", "up", 5), { repeating = true })
hl.bind("SUPER + CTRL + F10", adjust_volume("speaker", "down", 1), { repeating = true })
hl.bind("SUPER + CTRL + F11", adjust_volume("speaker", "up", 1), { repeating = true })

-- Microphone volume control
hl.bind("SUPER + ALT + F10", adjust_volume("microphone", "down", 1), { repeating = true })
hl.bind("SUPER + ALT + F11", adjust_volume("microphone", "up", 1), { repeating = true })
