{ config, lib, pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    theme = "Catppuccin-Frappe";
    shellIntegration = {
      enableZshIntegration = true;
    };
  };
}
