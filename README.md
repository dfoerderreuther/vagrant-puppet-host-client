vagrant-puppet-host-client
==========================

Vagrant configuration for running a puppet host and client

## Start VMs

vagrant up

## Create client configuration on host

	vagrant ssh puppet
	sudo vi /etc/puppet/manifests/init.pp

	class test {
	        file { '/opt/test.txt':
	                owner => root, group => root, mode => 0555, 
	                content => 'Hallo Welt', 
	        }
	}
	
	node 'puppetagent.local' {
	        include test
	}

## Apply client configuration from client

	vagrant ssh puppetagent
	sudo agent --no-daemonize --onetime --verbose
