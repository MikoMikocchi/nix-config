{ config, pkgs, ... }: {
  programs.zsh = {
    enable = true;

    enableCompletion = true;
    syntaxHighlighting.enable = true;

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    shellAliases =
      let
        flakeDir = "~/nix";
      in {
      rb = "sudo nixos-rebuild switch --flake ${flakeDir}";
      upd = "nix flake update ${flakeDir}";
      upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";

      hms = "home-manager switch --flake ${flakeDir}";

      conf = "nvim ${flakeDir}/nixos/configuration.nix";
      pkgs = "nvim ${flakeDir}/nixos/packages.nix";

      ll = "ls -l";
      v = "nvim";
      se = "sudoedit";
      ff = "fastfetch";
      pf = "pfetch";
      g = "git";
      nix-rebuild = "sudo nixos-rebuild switch --flake ./nix-config";
      home-rebuild = "home-manager switch --flake ./nixos-config";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git" 
        "sudo"
      ];
      theme = "agnoster";
    };
  };
}
