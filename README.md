Vagrantfile

Prerequisites You'll need to have the following prerequisites installed on your workstation:

Install Vagrant:

https://www.vagrantup.com/intro/getting-started/install.html

Create a project directory qnd switch to it

    $ mkdir vagrant
    $ cd vagrant

Create a Vagrant File with the commande vagrant init. This commandd will generate a VagrantFile ready to use

    $ vagrant init centos/7

Install a Box. Yhen lauching this command you will be able to choose your provider Hyper-Vm VirtualVox or VMware.

    $ vagrant box add Centos/7


Using a Box for that open the Vagrantfile and change the contents to the following:

    $ Vagrant.configure("2") do |config| 
       config.vm.box = "Centos/7"
   end

Start Vagrant Box. This commande will start the VM on the selected provider that you choose in the previous step

    $ vagrant up   

Once your VM is up use SSH to connect to your vagrant Box 

    $ vagrant ssh  

Now to install Docker-CE, Ansible and VIM Editor please refare to the Vagrant Files yhere all the commands will be liste in order to install those software.
  