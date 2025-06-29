{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = true;

      hostname = {
        ssh_only = false;
        format = "[$ssh_symbol$hostname]($style) ";
        style = "bold blue";
      };

      character = {
        success_symbol = "[ \\$ ](bold green)";
        error_symbol = "[ \\$ ](bold red)";
      };

      username = {
        show_always = true;
	      format = "[$user]($style)@";
        style_user = "bold cyan";
      };

      directory = {
        read_only = " 🔒";
        truncation_symbol = "…/";
      };
    };
  };
}
