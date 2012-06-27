puppet-alfresco
===============

Puppet module for managing Alfresco 4 on Ubuntu 12.04.

This is not intended to be used as-is, but rather as an example, to be
adapted to your needs.

# Installation #

Clone this repository in /etc/puppet/modules, but make sure you clone it as directory
'alfresco':

	cd /etc/puppet/modules
	git clone https://github.com/jurgenlust/puppet-alfresco.git alfresco

You also need the puppet-tomcat module:

	cd /etc/puppet/modules
	git clone https://github.com/jurgenlust/puppet-tomcat.git tomcat

To run the example Vagrant machine, you also need the puppet-postgres module:

	cd /etc/puppet/modules
	git clone https://github.com/jurgenlust/puppet-postgres.git postgres

And the java7 module:

	cd /etc/puppet/modules
	git clone git://github.com/jurgenlust/puppet-java7.git java7
	
	
# Usage #

The manifest in the tests directory shows how you can install Alfresco.
For convenience, a Vagrantfile was also added, which starts an
Ubuntu 12.04 x64 VM and applies the init.pp. When the virtual machine is ready,
you should be able to access Alfresco at
[http://localhost:8780/alfresco](http://localhost:8780/alfresco) and Share at
[http://localhost:8780/share](http://localhost:8780/share).

Note that the vagrant VM will only be provisioned correctly if the alfresco,
tomcat, java7 and postgres modules are in the same parent directory.
	