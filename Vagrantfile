require 'vagrant-hosts'
require 'vagrant-auto_network'

Vagrant.configure('2') do |config|
	
  box_name = "precise64"
  box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.define :puppet do |node|
    node.vm.box_url = box_url
    node.vm.box = box_name

    node.vm.hostname = 'puppet.local'

    node.vm.network :private_network, :ip => '0.0.0.0', :auto_network => true
    node.vm.provision :hosts
    node.vm.provision :shell, path: 'bootstrap_master.sh'
  end

  config.vm.define :puppetagent do |node|
    node.vm.box_url = box_url
    node.vm.box = box_name

    node.vm.hostname = 'puppetagent.local'

    node.vm.network :private_network, :ip => '0.0.0.0', :auto_network => true
    node.vm.provision :hosts
    node.vm.provision :shell, path: 'bootstrap_agent.sh'
  end

end

