# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.ssh.insert_key = false

  config.vm.define 'centos' do |centos|
    centos.vm.box = "bento/centos-7.2"
    centos.vm.network 'private_network', ip: '192.168.33.45'
    centos.cache.scope = :box if Vagrant.has_plugin? 'vagrant-cachier'
  end

  config.vm.define 'ubuntu' do |ubuntu|
    ubuntu.vm.box = "ubuntu/trusty64"
    ubuntu.vm.network 'private_network', ip: '192.168.33.46'
    ubuntu.cache.scope = :box if Vagrant.has_plugin? 'vagrant-cachier'
  end
end
