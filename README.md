Vagrantfile

Prerequisites You'll need to have the following prerequisites installed on your workstation:

Install Vagrant:

https://www.vagrantup.com/intro/getting-started/install.html

Projet Setup:

https://www.vagrantup.com/intro/getting-started/project_setup.html

Install a Box

    $ vagrant box add Centos/7

Create a base Vagrantfile

    $ vagrant init Centos7

Using a Box for that open the Vagrantfile and change the contents to the following:

    $ Vagrant.configure("2") do |config| 
       config.vm.box = "Centos7"
   end

Start Vagrant Box

    $ vagrant up   

SSH to your vagrant Box

    $ vagrant ssh  

Install Docker CE via Shell provisioning

    $ Vagrant.configure("2") do |config| 
       config.vm.box = "Centos7"
       config.vm.provision "shell", path: "docker_install.sh

Install Vim Editor provisioning

    $ Vagrant.configure("2") do |config|
      config.vm.box = "centos/7"
      config.vm.provision "shell", path: "vim_install.sh"

Install Ansible via Shell provisionning

    $ Vagrant.configure("2") do |config|
      config.vm.box = "centos/7"
      config.vm.provision "shell", path: "ansible_install.sh"
  