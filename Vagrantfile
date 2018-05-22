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
	#config.vm.provision "shell", inline: "sudo dnf update -y"
	#config.vm.provision "shell", inline: "sudo dnf install openvpn easy-rsa nano -y"
	#config.vm.provision "shell", inline: "sudo dnf install firewalld -y"
  end
  
end
