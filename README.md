Vagrantfile

Prerequisites You'll need to have the following prerequisites installed on your workstation:

Install Vagrant:

https://www.vagrantup.com/intro/getting-started/install.html

Create a project directory and switch to it

    $ mkdir vagrant
    $ cd vagrant

Create a Vagrant File with the command vagrant init. This commandd will generate a VagrantFile ready to use

    $ vagrant init centos/7

Install a Box. When running this command you will be able to choose your provider Hyper-V, VirtualVox or VMware.

    $ vagrant box add Centos/7


In your VagrantFile you can add your VM box before doing a vagrat up.

    $ Vagrant.configure("2") do |config| 
       config.vm.box = "Centos/7"
   end

Start Vagrant Box. This commande will start the VM on the selected provider that you choose in the previous step

    $ vagrant up   

To SSH to your VM use the command

    $ vagrant ssh  

Now to install Docker-CE, Ansible and VIM Editor please refer to the Vagrant Files where all the commands will be listed in order to install those software.

If you make any changes in your VagrantFile please run the command vagrant reload who yill retart your vm

    $ vagrant  reload

When you yill add your .sh file in your VagrantFile to run your scripts in order to install your software please use the command vagrant provision who will provision your shell script and install the software.

    $ vagrant  provision

To stop a VMrun the command

    $ vagrant  halt

To delete a VM and all the ressources that was created during the creation run the command

    $ vagrant  destroy
