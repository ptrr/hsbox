# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, path: "hsbox.sh"
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.provider "virtualbox" do |vb|
     vb.customize ["modifyvm", :id, "--memory", "2048"]
  end
  config.vm.synced_folder "~/Code/", "/home/vagrant/Code/"
end
