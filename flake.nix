{
  nixosConfigurations.pi4 = nixpkgs.lib.nixosSystem {
    system = "aarch64-linux";
    modules = [
      ./nixos/common.nix
      ./nixos/pi4.nix
    ];
  };

  nixosConfigurations.vm = nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
    modules = [
      ./nixos/common.nix
      ./nixos/vm.nix
    ];
  };
}
