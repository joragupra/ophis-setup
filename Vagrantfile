# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provision "ansible" do |ansible|
    ansible.groups = {
      'timeseriesdb' => ['default']
    }
    ansible.verbose = "v"
    ansible.playbook = "playbook.yml"
    #ansible.inventory_path = "provision/ansible_hosts"

    config.vm.network "forwarded_port", guest: 8083, host: 8083
    config.vm.network "forwarded_port", guest: 8086, host: 8086
    config.vm.network "forwarded_port", guest: 3000, host: 3000
  end

end
