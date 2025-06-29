{
  imports = [
    ./modules
    ./home-packages.nix
  ];

  home = {
    username = "miko";
    homeDirectory = "/home/miko";

    stateVersion = "25.05";
  };
}
