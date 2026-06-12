-- Window rules configuration

-- Fullscreen windows
hl.window_rule({
  name = "fullscreen",
  match = { fullscreen = true },
  no_dim = true,
  border_color = "rgb(f6955b)",
})

-- Signal messaging app
hl.window_rule({
  name = "signal",
  match = { class = "org.signal.Signal" },
  float = true,
  persistent_size = true,
})

-- OBS Studio
hl.window_rule({
  name = "obs",
  match = { class = "com.obsproject.Studio" },
  float = true,
  persistent_size = true,
})

-- Smile emoji picker
hl.window_rule({
  name = "smile",
  match = { class = "it.mijorus.smile" },
  float = true,
})

-- WL-clipboard
hl.window_rule({
  name = "wl-clipboard",
  match = { title = "wl-clipboard" },
  float = true,
})

-- File picker dialogs
hl.window_rule({
  name = "filepicker",
  match = { class = "xdg-desktop-portal-gtk" },
  float = true,
})

-- GIMP export dialog
hl.window_rule({
  name = "gimp",
  match = {
    class = "(file-)(.*)",
    title = "(Export Image as )(.*)",
  },
  float = true,
})

-- Calculator
hl.window_rule({
  name = "calculator",
  match = { class = "org.gnome.Calculator" },
  float = true,
})

-- Mission Center
hl.window_rule({
  name = "mission-center",
  match = { class = "io.missioncenter.MissionCenter" },
  float = true,
  persistent_size = true,
})
