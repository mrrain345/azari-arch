---  Screenshot utility
--- @param mode "window" | "output" | "region"
--- @return function Dispatcher
function screenshot(mode)
  return function()
    if mode == "region" then
      hl.exec_cmd("hyprshot -m region")
      return
    end

    hl.config({ cursor = { invisible = true } })

    hl.timer(function()
      hl.exec_cmd("hyprshot -m " .. mode .. " -m active")
    end, { timeout = 50, type = "oneshot" })

    hl.timer(function()
      hl.config({ cursor = { invisible = false } })
    end, { timeout = 100, type = "oneshot" })
  end
end
