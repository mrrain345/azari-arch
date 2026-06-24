## `ws_switch_next`

Switch to the next workspace on the same monitor.
If the current workspace is the last one:
  - if it's empty: do nothing
  - otherwise: switch to a new workspace with the lowest available number higher than the current.

## `ws_switch_prev`

Switch to the previous workspace on the same monitor.
If the current workspace is the first one:
  - if it's NOT empty: do nothing
  - otherwise: switch to a new workspace with the lowest available number lower than the current.

## `ws_move_window_next`

Move the focused window to the next workspace on the same monitor.
If the current workspace is the last one:
  - if has only one window: do nothing
  - otherwise: move the window to a new workspace with the lowest available number higher than the current.

## `ws_move_window_prev`

Move the focused window to the previous workspace on the same monitor.
If the current workspace is the first one:
  - if has only one window: do nothing
  - if it has the lowest available number: do nothing
  - otherwise: move the window to a new workspace with the lowest available number lower than the current.
