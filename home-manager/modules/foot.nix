{ pkgs, ... }: {
  programs.foot = {
    enable = true;
    settings = {
      main = {
        pad = "5x5 center";
        font = "JetBrainsMono Nerd Font:size=10";
        "resize-delay-ms" = 2500;
        "dpi-aware" = "yes";
        term = "xterm-256color";
        shell = "zsh";
        title = "Foot";
        "initial-window-size-pixels" = "1000x520";
      };

      scrollback = {
        lines = 5000;
        multiplier = 2;
        "indicator-format" = "percentage";
        "indicator-position" = "fixed";
      };

      url = {
        "osc8-underline" = "url-mode";
        launch = "xdg-open ${url}";
      };

      cursor = {
        style = "block";
        blink = "yes";
        "beam-thickness" = 1;
        color = "11111b f5e0dc";
      };

      mouse = {
        "hide-when-typing" = "no";
      };

      colors = {
        foreground = "e0e0e0";
        background = "1a1a1a";
        regular0 = "1a1a1a";
        regular1 = "ff929f";
        regular2 = "5fc940";
        regular3 = "c5b300";
        regular4 = "5fb8ff";
        regular5 = "ef91df";
        regular6 = "1dc5c3";
        regular7 = "c4bdaf";
        bright0 = "242536";
        bright1 = "f69d6a";
        bright2 = "88c400";
        bright3 = "d7ae00";
        bright4 = "8cb4f0";
        bright5 = "de99f0";
        bright6 = "00ca9a";
        bright7 = "e0e0e0";
      };
    };
  };
}