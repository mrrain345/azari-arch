--- Fix Chrome fullscreen behavior
--- @param window HL.Window
function chrome_fullscreen_fix(window)
  if window.class == "google-chrome" and window.fullscreen == 1 then
    hl.dispatch(hl.dsp.window.fullscreen({
      mode = "maximized",
      action = "unset",
      window = window,
    }))
  end
end
