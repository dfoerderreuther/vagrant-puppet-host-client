#!/usr/bin/env bash
echo 'Installing Puppet Master.'
rm -f puppetlabs-release-precise.deb
wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb
dpkg -i puppetlabs-release-precise.deb
apt-get update
apt-get install -y puppetmaster
echo '*.local' > /etc/puppet/autosign.conf
