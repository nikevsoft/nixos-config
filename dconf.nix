{ config, lib, pkgs, ... }:

{
  dconf.settings = {
      "org/gnome/applications/terminal" = {
        exec = "kitty";
      };

      "org/gnome/desktop/wm/keybindings" = {
        activate-window-menu = [ "<Super>space" ];
        minimize = [];
        unmaximized = [];
        maximized = [];
        toggle-maximized = [ "<Super>m" ];
        begin-move = [];
        begin-resize = [];
        close = [ "<Super>q" ];
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

      "org/gnome/desktop/wm/preferences" = {
        audible-bell = false;
        auto-raise = true;
      };

      "org/gnome/mutter" = {
        edge-tiling = false;
        overlay-key = "Super_R";
        workspaces-only-on-primary = false;
      };

      "org/gnome/mutter/keybindings" = {
        toggle-tiled-left = [];
        toggle-tiled-right = [];
      };

      "org/gnome/mutter/wayland/keybindings" = {
        restore-shortcuts = [];
      };

      "org/gnome/shell" = {
        remember-mount-password = true;

        disable-user-extensions = false;
        enabled-extensions = [
          "pop-shell@system76.com"
        ];
      };

      "org/gnome/shell/keybindings" = {
        focus-active-notification = [];
        screenshot = [];
        screenshot-window = [];
        show-screen-recording-ui = [ "<Shift><Control><Super>r" ];
        show-screenshot-ui = [ "<Shift><Control><Super>p" ];
        toggle-application-view = [];
        toggle-quick-settings = [];
        toggle-overview = [ "<Super>a" ];
        toggle-message-tray = [ "<Super>v" ];
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

      "org/gnome/settings-daemon/plugins/media-keys" = {
        custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" ];
        email = [];
        home = [ "<Super>f" ];
        www = [ "<Super>b" ];
        help = [];
        logout = [ "<Shift><Control><Super>e"];
        magnifier = [];
        magnifier-zoom-in = [];
        magnifier-zoom-out = [];
        screenreader = [];
        screensaver = [ "<Shift><Control><Super>l" ];
      };

      "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
        name = "Terminal";
        binding = "<Super>t";
        command = "kitty";
      };
    };
}
