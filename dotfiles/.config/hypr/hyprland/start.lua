-- Autostart commands
hl.on("hyprland.start", function()
  hl.exec_cmd("dbus-update-activation-environment --systemd --all")
  hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
  hl.exec_cmd("wl-clip-persist --clipboard regular")
  hl.exec_cmd("uwsm app -- qs -c noctalia-shell")

  hl.exec_cmd("uwsm app -- flatpak run org.signal.Signal --start-in-tray")

  hl.timer(function()
    hl.exec_cmd("uwsm app -- hyprlock --grace 0")
  end, { timeout = 1500, type = "oneshot" })
end)

require("utils/fullscreen_fix")
hl.on("window.fullscreen", chrome_fullscreen_fix)

hl.workspace_rule({ workspace = "1", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "2", monitor = "eDP-1" })
