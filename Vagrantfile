# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty32"
  
  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
  
    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
    
    curl -L https://get.rvm.io | bash -s stable --ruby
    
    source /usr/local/rvm/scripts/rvm

    sudo apt-get install -y nodejs
    sudo ln -s /usr/bin/nodejs /usr/bin/node

    sudo apt-get install -y npm
    sudo apt-get install -y git

   SHELL

end
