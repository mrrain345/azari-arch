-- Autostart commands
hl.on("hyprland.start", function()
  hl.exec_cmd("dbus-update-activation-environment --systemd --all")
  hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
  hl.exec_cmd("wl-clip-persist --clipboard regular")
  hl.exec_cmd("uwsm app -- qs -c noctalia-shell")

  hl.exec_cmd("uwsm app -- flatpak run org.signal.Signal --start-in-tray")

  hl.timer(function()
    hl.dispatch(hl.dsp.workspace.swap_monitors({ monitor1 = "eDP-1", monitor2 = "HDMI-A-1" }))
    hl.exec_cmd("uwsm app -- hyprlock --grace 0")
  end, { timeout = 1500, type = "oneshot" })
end)

require("utils/fullscreen_fix")
hl.on("window.fullscreen", chrome_fullscreen_fix)
