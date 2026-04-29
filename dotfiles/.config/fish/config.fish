if status is-interactive
  set -g fish_greeting

  zoxide init fish --cmd cd | source
  oh-my-posh init fish --config ~/.config/oh-my-posh/config.yaml | source
end
