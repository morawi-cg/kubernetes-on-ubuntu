Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  config.vm.define "k8s-2020-a-manager01"
  config.vm.hostname = "k8s-2020-a-manager01.compute.internal"
  config.vm.network :private_network, ip: "192.168.0.41"
  config.vm.provider :virtualbox do |vb|
    vb.customize [
      "modifyvm", :id,
      "--cpuexecutioncap", "50",
      "--memory", "4096",
    ]
  end
  # Please adjust the workdir to own requirements and setup
  config.vm.synced_folder "/home/engineer/Documents/QT/Kubernetes/Vagrant", "/home/vagrant/workdir"
  config.vm.provision :shell, path: "bootstrap.sh"
end
