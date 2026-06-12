-- Keybindings configuration

-- Applications
hl.bind("SUPER + Return", hl.dsp.exec_cmd("uwsm app -- ghostty"))
hl.bind("SUPER + B", hl.dsp.exec_cmd("uwsm app -- flatpak run com.google.Chrome"))
hl.bind("SUPER + CTRL + B", hl.dsp.exec_cmd("uwsm app -- flatpak run com.google.Chrome --incognito"))
hl.bind("SUPER + V", hl.dsp.exec_cmd("uwsm app -- code"))
hl.bind("SUPER + F", hl.dsp.exec_cmd("uwsm app -- nautilus --new-window"))
hl.bind("SUPER + M", hl.dsp.exec_cmd("uwsm app -- flatpak run org.signal.Signal"))
hl.bind("SUPER + K", hl.dsp.exec_cmd("uwsm app -- flatpak run org.gnome.Calculator"))
hl.bind("SUPER + T", hl.dsp.exec_cmd("uwsm app -- flatpak run org.gnome.TextEditor"))

-- Launcher and utilities
hl.bind("SUPER + A", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call launcher toggle"))
hl.bind("SUPER + SEMICOLON", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call launcher emoji"))
hl.bind("SUPER + CTRL + L", hl.dsp.exec_cmd("uwsm app -- hyprlock"))

-- System control
hl.bind("SUPER + CTRL + Escape", hl.dsp.exec_cmd("hyprshutdown -p 'systemctl poweroff'"))
hl.bind("SUPER + CTRL + R", hl.dsp.exec_cmd("hyprshutdown -p 'systemctl reboot'"))
hl.bind("SUPER + ALT + R", hl.dsp.exec_cmd("hyprshutdown -p 'uwsm stop'"))

-- Window management
hl.bind("SUPER + X", hl.dsp.window.close())
hl.bind("SUPER + CTRL + X", hl.dsp.window.kill())
hl.bind("F11", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))

-- Screenshots
hl.bind("Print", hl.dsp.exec_cmd("hyprshot -m region"))
hl.bind("SUPER + Print", hl.dsp.exec_cmd("hyprshot-no-cursor -m window -m active"))
hl.bind("SUPER + CTRL + Print", hl.dsp.exec_cmd("hyprshot-no-cursor -m output -m active"))

-- Audio control (locked = true means they work on lockscreen)
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })
hl.bind("SUPER + F9", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("SUPER + ALT + F9", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })

-- Volume control (repeating = true for volume hold)
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume -l '1.0' @DEFAULT_AUDIO_SINK@ 5%-"),
  { repeating = true, locked = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l '1.0' @DEFAULT_AUDIO_SINK@ 5%+"),
  { repeating = true, locked = true })
hl.bind("SUPER + F10", hl.dsp.exec_cmd("wpctl set-volume -l '1.0' @DEFAULT_AUDIO_SINK@ 5%-"), { repeating = true })
hl.bind("SUPER + F11", hl.dsp.exec_cmd("wpctl set-volume -l '1.0' @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true })
hl.bind("SUPER + CTRL + F10", hl.dsp.exec_cmd("wpctl set-volume -l '1.0' @DEFAULT_AUDIO_SINK@ 1%-"), { repeating = true })
hl.bind("SUPER + CTRL + F11", hl.dsp.exec_cmd("wpctl set-volume -l '1.0' @DEFAULT_AUDIO_SINK@ 1%+"), { repeating = true })

-- Microphone volume control
hl.bind("SUPER + ALT + F10", hl.dsp.exec_cmd("wpctl set-volume -l '1.0' @DEFAULT_AUDIO_SOURCE@ 1%-"),
  { repeating = true })
hl.bind("SUPER + ALT + F11", hl.dsp.exec_cmd("wpctl set-volume -l '1.0' @DEFAULT_AUDIO_SOURCE@ 1%+"),
  { repeating = true })
