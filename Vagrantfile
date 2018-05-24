# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "rhel" do |rhel|
        rhel.vm.box = "generic/rhel7"
	#rhel.vm.network "forwarded_port", guest: 80, host: 8081
	#rhel.vm.provision "file", source: "jdk-8-linux-x64.rpm", destination: "/home/vagrant/jdk-8-linux-x64.rpm"
	rhel.vm.network "private_network", ip: "172.17.177.21"
	rhel.vm.provider :virtualbox do |vb|
		vb.customize [ 'modifyvm', :id, '--memory', '1024' ]
		vb.customize [ 'modifyvm', :id, '--cpus', '2' ]
		vb.customize [ 'modifyvm', :id, '--name', 'rhel' ]
  	end
	
	config.vm.provision :ansible do |ansible|
    		#ansible.playbook = "playbook-jdk.yml"
    		ansible.playbook = "playbook-jdk.yml-copy3"
		ansible.verbose = "vvv"
  	end	

  end
end
