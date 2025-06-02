{ config, pkgs, ... }:

{
  imports = [ ];

  networking.firewall.allowedTCPPorts = [ 22 8123 ];
  services.openssh.enable = true;
  networking.interfaces.ens6.useDHCP = true;

  services.home-assistant = {
    enable = true;
    configFile = "/etc/nixos/home-assistant/config.yaml";
  };

  users.users.vagrant = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    password = "vagrant"; # simple dev password
  };

  system.stateVersion = "23.11";
}
