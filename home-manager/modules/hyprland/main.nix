{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    settings = {
      env = [
        "NIXOS_OZONE_WL,1"
        "QT_QPA_PLATFORM,wayland"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
      ];

      monitor = "eDP-1, 1920x1200@60, 0x0, 1";

      "$mainMod" = "SUPER";
      "$terminal" = "foot";
      "$fileManager" = "nautilus";
      "$menu" = "wofi --show drun";

      exec-once = [
        "waybar"
        "hyprpaper"
      ];

      general = {
        gaps_in = 3;
        gaps_out = 5;

        border_size = 2;

        "col.active_border" = "rgba(54b4ebee)";
        "col.inactive_border" = "rgba(595959ee)";

        resize_on_border = false;
        allow_tearing = false;

        layout = "master";
      };

      decoration = {
        blur = {
          enabled = true;
          size = 6;
          passes = 2;
          ignore_opacity = true;
          new_optimizations = true;
          special = true;
          popups = true;
        };

        shadow = {
          enabled = true;
          range = 4;
          render_power = 3;
          color = "rgba(1a1a1aee)";
        };

        rounding = 10;
        rounding_power = 2;

        active_opacity = 1.0;
        inactive_opacity = 1.0;
        fullscreen_opacity = 1.0;
      };

      animations = {
        enabled = true;

        bezier = [
          "easeOutQuint,0.23,1,0.32,1"
          "easeInOutCubic,0.65,0.05,0.36,1"
          "linear,0,0,1,1"
          "almostLinear,0.5,0.5,0.75,1.0"
          "quick,0.15,0,0.1,1"
        ];

        animations = [
          "global, 1, 10, default"
          "border, 1, 5.39, easeOutQuint"
          "windows, 1, 4.79, easeOutQuint"
          "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
          "windowsOut, 1, 1.49, linear, popin 87%"
          "fadeIn, 1, 1.73, almostLinear"
          "fadeOut, 1, 1.46, almostLinear"
          "fade, 1, 3.03, quick"
          "layers, 1, 3.81, easeOutQuint"
          "layersIn, 1, 4, easeOutQuint, fade"
          "layersOut, 1, 1.5, linear, fade"
          "fadeLayersIn, 1, 1.79, almostLinear"
          "fadeLayersOut, 1, 1.39, almostLinear"
          "workspaces, 1, 1.94, almostLinear, fade"
          "workspacesIn, 1, 1.21, almostLinear, fade"
          "workspacesOut, 1, 1.94, almostLinear, fade"
        ];
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "slave";
        new_on_top = true;
        mfact = 0.5;
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };

      input = {
        kb_layout = "us, ru";
        kb_options = "grp:win_space_toggle";

        follow_mouse = 1;

        touchpad = {
          natural_scroll = true;
        };
      };

      gestures = {
        workspace_swipe = true;
        workspace_swipe_forever = true;
        workspace_swipe_invert = false;
      };

      device = {
        name = epic-mouse-v1;
        sensitivity = -0.5;
      };

      windowrule = [
        "suppressevent maximize, class:.*"
        "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      ];
    };
  };
}