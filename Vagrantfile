Vagrant.configure("2") do |config|
  config.vm.box = "nixbox/nixos"
  config.vm.box_version = "23.11"
  config.vm.provision "file", source: "configuration.nix", destination: "/etc/nixos/configuration.nix"
  config.vm.provision "file", source: "home-assistant", destination: "home-assistant"

  config.vm.provider :libvirt do |libvirt|
    libvirt.memory = 4096
    libvirt.cpus = 2
    libvirt.storage :file, size: '20G', bus: "virtio"
  end

  # Forward Home Assistant port
  config.vm.network "forwarded_port", guest: 8123, host: 8123

  # Provision using Nix
  config.vm.provision "shell", inline: <<-SHELL
    sudo nixos-rebuild switch
  SHELL
end
