-- Main configuration settings

hl.config({
  general = {
    border_size = 2,
    gaps_in = 4,
    gaps_out = 8,
    layout = "master",
    resize_on_border = true,

    col = {
      active_border = "#7199ee",
      inactive_border = "#374059",
    },

    snap = {
      enabled = true,
      respect_gaps = true,
    },
  },

  decoration = {
    rounding = 12,
    dim_inactive = true,
    dim_strength = 0.3,

    shadow = {
      color = "#17172699",
    },
  },

  input = {
    kb_layout = "pl",
  },

  group = {
    auto_group = true,
    insert_after_current = false,

    col = {
      border_active = "#7199ee",
      border_inactive = "#374059",
      border_locked_active = "#9fbbf3",
    },

    groupbar = {
      font_size = 12,
      font_weight_active = "bold",
      height = 16,
      indicator_height = 3,
      gaps_in = 3,
      gaps_out = 3,
      keep_upper_gap = false,
      text_color = "#a0a8cd",

      col = {
        active = "#7199ee",
        inactive = "#374059",
      },
    },
  },

  misc = {
    animate_manual_resizes = true,
    background_color = "#171726",
    disable_hyprland_logo = true,
    disable_splash_rendering = true,
    force_default_wallpaper = 2,
    font_family = "FiraCode Nerd Font",
    vrr = 1,
  },

  cursor = {
    default_monitor = "HDMI-A-1",
  },

  binds = {
    movefocus_cycles_groupfirst = true,
    drag_threshold = 10,
  },

  ecosystem = {
    no_update_news = true,
    no_donation_nag = true,
  },

  master = {
    mfact = 0.67,
    new_status = "master",
    new_on_top = true,
    new_on_active = "before",
  },
})
