if status is-login
  if test "$XDG_VTNR" = "1"
    if uwsm check may-start
      exec uwsm start default
    end
  end
end