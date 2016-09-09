# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-7.2"
  config.ssh.insert_key = false

  config.vm.define 'base' do |base|
    base.vm.network 'private_network', ip: '192.168.33.45'
    base.cache.scope = :box if Vagrant.has_plugin? 'vagrant-cachier'
  end
end
