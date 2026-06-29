if status is-interactive
  set -g fish_greeting

  alias ll "eza -l"

  zoxide init fish --cmd cd | source
end

# OpenClaw Completion
test -f "/var/home/mrrain/.openclaw/completions/openclaw.fish"; and source "/var/home/mrrain/.openclaw/completions/openclaw.fish"
