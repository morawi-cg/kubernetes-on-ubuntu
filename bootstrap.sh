#!/bin/bash

sudo apt-get -y update && apt-get upgrade
sudo apt-get -y install curl 
sudo apt-get -y install wget
sudo apt-get -y install unzip
sudo apt-get -y install install build-essential libssl-dev libffi-dev python3-dev
sudo cp -pr go /usr/local 
export PATH=$PATH:/usr/local/go/bin
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
cd /home/vagrant/workdir
sudo cp consul /usr/bin  
sudo cp nomad  /usr/bin
sudo cp packer /usr/bin
sudo cp terraform /usr/bin
sudo cp Vagrantfile  /usr/bin
sudo cp vault /usr/bin
sudo mkdir /home/vagrant/.aws
sudo cp credentials /home/vagrant/.aws
sudo cp config /home/vagrant/.aws
python3 -m pip install boto3 
curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
sudo apt -y install ansible
sudo apt -y install git
git clone --recursive https://github.com/kubernetes-sigs/kubespray.git

exit 0

