-- Monitor configuration

-- Configure DP primary monitor
hl.monitor({
  output = "DP-2",
  mode = "3840x2160@60",
  position = "auto-left",
  scale = 2,
})

-- Configure HDMI primary monitor
hl.monitor({
  output = "HDMI-A-1",
  mode = "3840x2160@60",
  position = "auto-left",
  scale = 2,
})

-- Configure eDP internal monitor
hl.monitor({
  output = "eDP-1",
  mode = "1920x1080@60",
  position = "auto-right",
})
