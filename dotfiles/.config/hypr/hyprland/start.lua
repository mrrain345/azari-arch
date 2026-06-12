-- Autostart commands
hl.on("hyprland.start", function()
  hl.exec_cmd("dbus-update-activation-environment --systemd --all")
  hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
  hl.exec_cmd("wl-clip-persist --clipboard regular")
  hl.exec_cmd("uwsm app -- qs -c noctalia-shell")

  hl.exec_cmd("uwsm app -- flatpak run org.signal.Signal --start-in-tray")

  hl.timer(function()
    hl.exec_cmd("hyprlock --grace 0")
  end, { timeout = 1500, type = "oneshot" })
end)

-- Fix Chrome fullscreen behavior
---@param window HL.Window
local function chrome_fullscreen_fix(window)
  if window.class == "google-chrome" and window.fullscreen == 1 then
    hl.dispatch(hl.dsp.window.fullscreen({
      mode = "maximized",
      action = "unset",
      window = window,
    }))
  end
end

hl.on("window.fullscreen", chrome_fullscreen_fix)
