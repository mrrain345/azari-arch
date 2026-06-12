--- Get the appropriate sink/source for a given device type
--- @param device "microphone" | "speaker"
--- @return string
local function get_sink(device)
  if device == "microphone" then
    return "@DEFAULT_AUDIO_SOURCE@"
  else
    return "@DEFAULT_AUDIO_SINK@"
  end
end


--- Toggle mute for a given device type
--- @param device "microphone" | "speaker"
--- @return function Dispatcher
function toggle_mute(device)
  return function()
    hl.exec_cmd("wpctl set-mute " .. get_sink(device) .. " toggle")
  end
end

--- Adjust volume for a given device type
--- @param device "microphone" | "speaker"
--- @param direction "up" | "down"
--- @param amount number Percentage to adjust (e.g., 5 for 5%)
--- @return function Dispatcher
function adjust_volume(device, direction, amount)
  return function()
    local sink = get_sink(device)
    local sign = direction == "up" and "+" or "-"
    local value = amount .. "%" .. sign

    hl.exec_cmd("wpctl set-mute " .. sink .. " 0") -- Ensure the device is unmuted
    hl.exec_cmd("wpctl set-volume -l '1.0' " .. sink .. " " .. value)
  end
end
