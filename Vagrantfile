# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.define "ubuntu-cka" do |vm1|
    config.ssh.private_key_path = "/Users/mimi/cnfplearning/k8s-native-cluster/.ssh/id_rsa"
    config.ssh.forward_agent = true
    config.ssh.username = "vagrant"
    config.ssh.password = "vagrant"
    vm1.vm.hostname = "ubuntu-cka"
    vm1.vm.box = "bento/ubuntu-22.04"
    vm1.vm.network "private_network", ip: "192.168.90.87"
    # vm1.vm.network "forwarded_port", guest: 8200, host: 8200
    vm1.vm.synced_folder ".", "/home/vagrant/"
    vm1.vm.provider "vmware_fusion" do |vmware|
      vmware.gui = true
      #vmware.name = "ubuntu-cka"
      vmware.memory = "4000"
      vmware.cpus = 2
      vmware.gui = false
    end
  end

  config.vm.define "ubuntu-cka1" do |vm2|
    config.ssh.private_key_path = "/Users/mimi/cnfplearning/k8s-native-cluster/.ssh/id_rsa"
    config.ssh.forward_agent = true
    config.ssh.username = "vagrant"
    config.ssh.password = "vagrant"
    vm2.vm.hostname = "ubuntu-cka1"
    vm2.vm.box = "bento/ubuntu-22.04"
    vm2.vm.network "private_network", ip: "192.168.90.88"
    # vm1.vm.network "forwarded_port", guest: 8200, host: 8200
    vm2.vm.synced_folder ".", "/home/vagrant/"
    vm2.vm.provider "vmware_fusion" do |vmware|
      vmware.gui = true
      #vmware.name = "ubuntu-cka1"
      vmware.memory = "4000"
      vmware.cpus = 2
      vmware.gui = false
    end
  end

  config.vm.define "ubuntu-cka2" do |vm3|
    config.ssh.private_key_path = "/Users/mimi/cnfplearning/k8s-native-cluster/.ssh/id_rsa"
    config.ssh.forward_agent = true
    config.ssh.username = "vagrant"
    config.ssh.password = "vagrant"
    vm3.vm.hostname = "ubuntu-cka2"
    vm3.vm.box = "bento/ubuntu-22.04"
    vm3.vm.network "private_network", ip: "192.168.90.89"
    # vm1.vm.network "forwarded_port", guest: 8200, host: 8200
    vm3.vm.synced_folder ".", "/home/vagrant/"
    vm3.vm.provider "vmware_fusion" do |vmware|
      vmware.gui = true
      #vmware.name = "ubuntu-cka2"
      vmware.memory = "4000"
      vmware.cpus = 2
      vmware.gui = false
    end
  end

  config.vm.define "ubuntu-cka3" do |vm4|
    config.ssh.private_key_path = "/Users/mimi/cnfplearning/k8s-native-cluster/.ssh/id_rsa"
    config.ssh.forward_agent = true
    config.ssh.username = "vagrant"
    config.ssh.password = "vagrant"
    vm4.vm.hostname = "ubuntu-cka3"
    vm4.vm.box = "bento/ubuntu-22.04"
    vm4.vm.network "private_network", ip: "192.168.90.90"
    # vm1.vm.network "forwarded_port", guest: 8200, host: 8200
    vm4.vm.synced_folder ".", "/home/vagrant/"
    vm4.vm.provider "vmware_fusion" do |vmware|
      vmware.gui = true
      #vmware.name = "ubuntu-cka3"
      vmware.memory = "4000"
      vmware.cpus = 2
      vmware.gui = false
    end
  end
end