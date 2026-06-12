--- Check if the workspace belongs to the specified monitor
--- @param workspace HL.Workspace
--- @param monitor HL.Monitor
local function same_monitor(workspace, monitor)
  return workspace and workspace.monitor and workspace.monitor.id == monitor.id
end

--- Check if both current and target workspaces are empty, if so skip the switch
--- @param current HL.Workspace
--- @param target HL.Workspace
local function should_skip_switch(current, target)
  return current.windows == 0 and target and target.windows == 0
end

--- Find the lowest unused workspace ID starting from 'start'
--- @param workspaces HL.Workspace[]
--- @param start number
local function find_unused_id(workspaces, start)
  local used_ids = {}
  for i = 1, #workspaces do
    used_ids[workspaces[i].id] = true
  end
  local candidate = start
  while used_ids[candidate] do
    candidate = candidate + 1
  end
  return tostring(candidate)
end

--- Get next workspace in the current output,
--- if it's the last one and it's not empty, get a new workspace number
local function get_next_workspace()
  local current = hl.get_active_workspace()
  if not current or not current.monitor then return nil end

  local current_id = tonumber(current.id)
  local workspaces = hl.get_workspaces()

  local next_workspace
  for i = 1, #workspaces do
    local workspace = workspaces[i]
    if workspace.id > current_id and same_monitor(workspace, current.monitor) then
      next_workspace = workspace
      break
    end
  end

  if not next_workspace then
    if current.windows == 0 then return nil end
    return find_unused_id(workspaces, current_id + 1)
  end

  return should_skip_switch(current, next_workspace) and nil or tostring(next_workspace.id)
end

--- Get previous workspace in the current output,
--- if it's the first one and it's not empty, get a new workspace number below
local function get_previous_workspace()
  local current = hl.get_active_workspace()
  if not current or not current.monitor then return nil end

  local current_id = tonumber(current.id)
  local workspaces = hl.get_workspaces()

  local previous_workspace
  for i = #workspaces, 1, -1 do
    local workspace = workspaces[i]
    if workspace.id < current_id and same_monitor(workspace, current.monitor) then
      previous_workspace = workspace
      break
    end
  end

  if not previous_workspace then
    if current.windows ~= 0 then return nil end
    local new_id = find_unused_id(workspaces, 1)
    return tonumber(new_id) < current_id and new_id or nil
  end

  return should_skip_switch(current, previous_workspace) and nil or tostring(previous_workspace.id)
end

--- Switch to the next workspace on the current monitor
function ws_switch_next()
  local workspace = get_next_workspace()
  if not workspace then return end
  hl.dispatch(hl.dsp.focus({ workspace = workspace }))
end

--- Switch to the previous workspace on the current monitor
function ws_switch_previous()
  local workspace = get_previous_workspace()
  if not workspace then return end
  hl.dispatch(hl.dsp.focus({ workspace = workspace }))
end

--- Move the current window to the next workspace on the current monitor
function ws_window_move_next()
  local workspace = get_next_workspace()
  if not workspace then return end
  hl.dispatch(hl.dsp.window.move({ workspace = workspace }))
end

--- Move the current window to the previous workspace on the current monitor
function ws_window_move_previous()
  local workspace = get_previous_workspace()
  if not workspace then return end
  hl.dispatch(hl.dsp.window.move({ workspace = workspace }))
end
