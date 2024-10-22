# Nixconfig

This repository has NixOS Flake configuration for Media.

Currently it supports having Nextcloud.

## Nextcloud

The Nextcloud configuration is based on [JupiterBroadcasting/nixconfigs](https://github.com/JupiterBroadcasting/nixconfigs).

Add [nextcloud.nix](https://raw.githubusercontent.com/JupiterBroadcasting/nixconfigs/refs/heads/main/nextcloud.nix) to your `/etc/nixos` folder. This will then be loaded by the media flake.

## Update this flake

Clone this repo and do:

```sh
nix flake update --flake .
```
