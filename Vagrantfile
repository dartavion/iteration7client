# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.network :private_network, ip: "192.168.33.30"

  config.vm.synced_folder "./", "/home/vagrant/AMC-client"

  config.vm.provision :shell, :path => "bootstrap.sh"
end
