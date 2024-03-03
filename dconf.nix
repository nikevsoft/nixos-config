{ config, lib, pkgs, ... }:
{
  dconf.settings = {
      "org/gnome/desktop/wm/preferences" = {
        audible-bell = false;
      };

      "org/gnome/shell" = {
        disable-user-extensions = false;

        enabled-extensions = [
          "pop-shell@system76.com"
        ];
      };

      "org/gnome/shell/keybindings" = {
        focus-active-notification = [];
        screenshot = [];
      };

      "org/gnome/desktop/wm/keybindings" = {
        activate-window-menu = [ "<Super>space" ];
        begin-move = [];
        begin-resize = [];
        close = [ "<Super>q" "<Alt>F4" ];
        cycle-group = [];
        cycle-group-backward = [];
        cycle-panels = [];
        cycle-panels-backward = [];
        cycle-windows = [];
        cycle-windows-backward = [];
        move-to-workspace-1 = [ "<Shift><Super>1" ];
        move-to-workspace-2 = [ "<Shift><Super>2" ];
        move-to-workspace-3 = [ "<Shift><Super>3" ];
        move-to-workspace-4 = [ "<Shift><Super>4" ];
        move-to-workspace-last = [];
        switch-applications = [];
        switch-applications-backward = [];
        switch-group = [];
        switch-group-backward = [];
        switch-input-source = [];
        switch-input-source-backward = [];
        switch-panels = [];
        switch-panels-backward = [];
        switch-to-workspace-1 = [ "<Super>1" ];
        switch-to-workspace-2 = [ "<Super>2" ];
        switch-to-workspace-3 = [ "<Super>3" ];
        switch-to-workspace-4 = [ "<Super>4" ];
        switch-to-workspace-left = [ "<Shift><Super>h" ];
        switch-to-workspace-last = [ "<Shift><Super>l" ];
      };

      "org/gnome/shell/extensions/pop-shell" = {
        activate-launcher = [ "<Super>d" ];
        activate-hint = true;
        activate-hint-border-radius = 5;
        fullscreen-launcher = true;
        hint-color-rgba = "rgb(232,236,241)";
        pop-monitor-down = [];
        pop-monitor-up = [];
        pop-monitor-left = [];
        pop-monitor-right = [];
        pop-workspace-down = [];
        pop-workspace-up = [];
        show-title = false;
        snap-to-grid = false;
        tile-by-default = true;
        tile-enter = [ "<Super>e" ];
      };
    };
}
