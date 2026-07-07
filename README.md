# Azari Arch

My personal Arch Linux bootable image and desktop setup, built declaratively with [Azari](https://github.com/mrrain345/azari-cli).

This repository is primarily a source-of-truth for my own system, not a
general-purpose distro config.
If you are browsing this repo, think of it as a reference implementation and
dotfiles archive.

## Entry Point

Main config: [azari.yaml](azari.yaml)

It defines the base image metadata and imports the rest of the system modules:

- [bootc.yaml](bootc.yaml): bootc and composefs behavior
- [passwd.yaml](passwd.yaml): Systemd service for setting the user password on boot
- [update.yaml](update.yaml): Azari auto-update service and systemd timer
- [aur.yaml](aur.yaml): AUR bootstrap (paru)
- [locale.yaml](locale.yaml): system locale, keyboard layout, timezone, and arch mirrors
- [user.yaml](user.yaml): user account, shell, PAM tweaks, post-install bootstrap
- [hardware.yaml](hardware.yaml): drivers, firmware, multimedia stack, enabled services
- [packages.yaml](packages.yaml): baseline user-space packages
- [fonts.yaml](fonts.yaml): system fonts
- [development.yaml](development.yaml): container and development tooling
- [hyprland.yaml](hyprland.yaml): Desktop environment packages and user services

## What This Builds

- Arch-based bootable image published as [`ghcr.io/mrrain345/azari-arch`](https://ghcr.io/mrrain345/azari-arch)
- Hyprland desktop environment
- NVIDIA + Intel graphics and media stack
- PipeWire audio stack
- Docker and podman development tooling
- Personal user bootstrap and dotfile stow flow

## Non-goals

- Not intended as a general-purpose distro config
- Not intended as a plug-and-play config for arbitrary hardware
- Contains personal configs (username, desktop workflow, package selection)

## Related Project

For building declarative bootable systems with this format, see
[Azari](https://github.com/mrrain345/azari-cli).
