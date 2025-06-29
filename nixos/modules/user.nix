{ pkgs, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.miko = {
      isNormalUser = true;
      description = "Miko";
      extraGroups = [ "networkmanager" "wheel" "input" ];
      packages = with pkgs; [];
    };
  };

  # Enable automatic login for the user.
  services.getty.autologinUser = "miko";
}
