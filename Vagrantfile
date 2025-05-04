Vagrant.configure("2") do |config|
  config.vm.box = "nixbox/nixos"
  config.vm.box_version = "23.11"

  config.vm.provider :libvirt do |libvirt|
    libvirt.memory = 4096
    libvirt.cpus = 2
    libvirt.storage :file, size: '20G', bus: "virtio"
  end

  # Forward Home Assistant port
  config.vm.network "forwarded_port", guest: 8123, host: 8123

  # Provision using Nix
  config.vm.provision "shell", inline: <<-SHELL
    sudo cp /configuration.nix /etc/nixos/configuration.nix
    sudo mkdir -p /etc/nixos/home-assistant
    sudo cp /home-assistant/config.yaml /etc/nixos/home-assistant/config.yaml
    sudo nixos-rebuild switch
  SHELL
end
