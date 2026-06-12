-- Monitor configuration

-- Configure HDMI monitor (primary)
hl.monitor({
  output = "HDMI-A-1",
  mode = "3840x2160@60",
  position = "auto-left",
  scale = 2,
})

-- Configure eDP monitor (laptop)
hl.monitor({
  output = "eDP-1",
  mode = "1920x1080@60",
  position = "auto-right",
})
