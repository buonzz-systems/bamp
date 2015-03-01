Vagrant.configure(2) do |config|
  
  config.vm.box = "buonzz/bamp"
  
  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  
  config.vm.network "private_network", ip: "192.168.33.60"
  config.vm.synced_folder "./", "/vagrant", id: "vagrant-root",
  owner: "vagrant",
  group: "www-data",
  mount_options: ["dmode=775,fmode=664"]
end