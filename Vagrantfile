
Vagrant.configure("2") do |config|
    config.vm.define "nginx" do |nginx|
      nginx.vm.box = "centos/8"
      nginx.vm.hostname = "frontend"
      nginx.vm.network "private_network", ip: "172.52.42.10"
      #nginx.vm.network "forwarded_port", guest: 80, host: 8080  
      nginx.vm.provider "virtualbox" do |v|
        v.name = "nginx-php"
        v.memory = 512
        v.cpus = 1
      end
      nginx.vm.provision "shell",path:"install-nginx.sh"
      nginx.vm.provision "shell",path:"install-php.sh"
      nginx.vm.provision "shell", inline: "sudo systemctl restart nginx"
    end
    config.vm.define "mariadb" do |mariadb|
        mariadb.vm.box = "centos/8"
        mariadb.vm.hostname = "db"
        mariadb.vm.network "private_network", ip: "172.52.42.20"
        mariadb.vm.provider "virtualbox" do |v|
          v.name ="mariadb"
          v.memory = 1024
          v.cpus = 2
        end
        mariadb.vm.provision "shell",path:"install-mariadb.sh"
    end
end

