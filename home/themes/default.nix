{ config, lib, pkgs, ... }:

{
  imports = [ 
    ./cava
  ];
  
  gtk = {
    enable = true;
    iconTheme = {
      name = "Yaru-magenta-dark";
      package = pkgs.yaru-theme;
    };

    theme = {
      name = "Nightfox-Dusk-B";
    #  package = pkgs.catppuccin-gtk;
    };
  };
}
