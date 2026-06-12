-- Autostart commands
hl.on("hyprland.start", function()
  hl.exec_cmd("dbus-update-activation-environment --systemd --all")
  hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
  hl.exec_cmd("wl-clip-persist --clipboard regular")
  hl.exec_cmd("uwsm app -- qs -c noctalia-shell")

  hl.exec_cmd("uwsm app -- flatpak run org.signal.Signal --start-in-tray")

  -- Chrome fullscreen bugfix
  hl.exec_cmd("fullscreen-fix")

  hl.timer(function()
    hl.exec_cmd("hyprlock --grace 0")
  end, { timeout = 1000, type = "oneshot" })
end)
