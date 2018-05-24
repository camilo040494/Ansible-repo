# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "rhel" do |rhel|
        config.vm.box = "generic/rhel7"
	rhel.vm.network "forwarded_port", guest: 80, host: 8081
	rhel.vm.provider :virtualbox do |vb|
		vb.customize [ 'modifyvm', :id, '--memory', '1024' ]
		vb.customize [ 'modifyvm', :id, '--cpus', '2' ]
		vb.customize [ 'modifyvm', :id, '--name', 'rhel' ]
  	end
	
	config.vm.provision "ansible" do |ansible|
 		ansible.verbose = "v"
		ansible.playbook = "playbook.yml"
	end
  end
  
end
