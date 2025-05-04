{ config, pkgs, ... }:

{
  imports = [ ];

  networking.firewall.allowedTCPPorts = [ 22 8123 ];
  services.openssh.enable = true;

  services.home-assistant = {
    enable = true;
    configFile = "/etc/nixos/home-assistant/config.yaml";
  };

  users.users.vagrant = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    password = "vagrant"; # simple dev password
  };

  system.stateVersion = "24.05";
}
