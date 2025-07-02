{ pkgs, ... }: {
  # ...
  gtk = {
    enable = true;

    iconTheme = {
      name = "WhiteSur Icons";
      package = pkgs.whitesur-icon-theme;
    };

    theme = {
      name = "WhiteSur-Theme";
      package = pkgs.whitesur-gtk-theme;
    };

    cursorTheme = {
      name = "WhiteSur-Cursor";
      package = pkgs.whitesur-cursors;
    };

    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };

    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };

  home.sessionVariables.GTK_THEME = "whitesur-dark";
  # ...
}
