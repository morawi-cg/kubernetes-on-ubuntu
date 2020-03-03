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

#### Must have JDK8 copied to this folder, be careful as this is Oracle version used for Home/Education usage only

#!/bin/bash
/usr/bin/update-alternatives --install jdk1.8.0_241/bin/java java /bin/java 1
/usr/bin/update-alternatives --install /home/vagrant/jdk1.8.0_241/bin/java java /bin/java 1
/usr/bin/update-alternatives --install /bin/java java /home/vagrant/jdk1.8.0_241/bin/java 1
/usr/bin/update-alternatives --install /bin/javac javac /home/vagrant/jdk1.8.0_241/bin/javac 1
/usr/bin/update-alternatives --install /bin/javaws javaws /home/vagrant/jdk1.8.0_241/bin/javaws 1
/usr/bin/update-alternatives --install /bin/jar jar /home/vagrant/jdk1.8.0_241/bin/jar 1
/usr/bin/update-alternatives --install /bin/javadoc javadoc /home/vagrant/jdk1.8.0_241/bin/javadoc 1
/usr/bin/update-alternatives --install /bin/javah javah /home/vagrant/jdk1.8.0_241/bin/javah 1
/usr/bin/update-alternatives --install /bin/jconsole jconsole /home/vagrant/jdk1.8.0_241/bin/jconsole 1
/usr/bin/update-alternatives --install /bin/jdb jdb /home/vagrant/jdk1.8.0_241/bin/jdb 1
/usr/bin/update-alternatives --install /bin/jardesigner jardesigner /home/vagrant/jdk1.8.0_241/bin/jardesigner 1
/usr/bin/update-alternatives --install /bin/jarsigner jarsigner /home/vagrant/jdk1.8.0_241/bin/jarsigner 1
/usr/bin/update-alternatives --install /bin/javap javap /home/vagrant/jdk1.8.0_241/bin/javap 1
/usr/bin/update-alternatives --install /bin/jcmd jcmd /home/vagrant/jdk1.8.0_241/bin/jcmd 1
/usr/bin/update-alternatives --install /bin/tools tools /home/vagrant/jdk1.8.0_241/lib/tools.jar 1
/usr/bin/update-alternatives --install /bin/jps jps /home/vagrant/jdk1.8.0_241/bin/jps 1
/usr/bin/update-alternatives --install /bin/jrunscript jrunscript /home/vagrant/jdk1.8.0_241/bin/jrunscript 1
/usr/bin/update-alternatives --install /bin/jvisualvm jvisualvm /home/vagrant/jdk1.8.0_241/bin/jvisualvm 1
/usr/bin/update-alternatives --install /bin/jstack jstack /home/vagrant/jdk1.8.0_241/bin/jstack 1
/usr/bin/update-alternatives --install /bin/jstat jstat /home/vagrant/jdk1.8.0_241/bin/jstat 1
/usr/bin/update-alternatives --install /bin/jsadebugd jsadebugd /home/vagrant/jdk1.8.0_241/bin/jsadebugd 1
/usr/bin/update-alternatives --install /bin/jrunscript jrunscript /home/vagrant/jdk1.8.0_241/bin/jrunscript 1
/usr/bin/update-alternatives --install /bin/jjs jjs /home/vagrant/jdk1.8.0_241/bin/jjs 1
/usr/bin/update-alternatives --install /bin/jhat jhat /home/vagrant/jdk1.8.0_241/bin/jhat 1
/usr/bin/update-alternatives --install /bin/jmc jmc /home/vagrant/jdk1.8.0_241/bin/jmc 1
/usr/bin/update-alternatives --install /bin/jinfo jinfo /home/vagrant/jdk1.8.0_241/bin/jinfo 1
/usr/bin/update-alternatives --install /bin/jmap jmap /home/vagrant/jdk1.8.0_241/bin/jmap 1
/usr/bin/update-alternatives --install /bin/jcontrol jcontrol /home/vagrant/jdk1.8.0_241/bin/jcontrol 1
/usr/bin/update-alternatives --install /bin/jdb jdb /home/vagrant/jdk1.8.0_241/bin/jdb 1
/usr/bin/update-alternatives --install /bin/jdeps jdeps /home/vagrant/jdk1.8.0_241/bin/jdeps 1
/usr/bin/update-alternatives --install /bin/javapackager javapackager /home/vagrant/jdk1.8.0_241/bin/javapackager 1
/usr/bin/update-alternatives --install /bin/java-rmi.cgi java-rmi.cgi /home/vagrant/jdk1.8.0_241/bin/java-rmi.cgi 1
/usr/bin/update-alternatives --install /bin/jcmd jcmd /home/vagrant/jdk1.8.0_241/bin/ 1
/usr/bin/update-alternatives --install /bin/idlj idlj /home/vagrant/jdk1.8.0_241/bin/idlj 1
/usr/bin/update-alternatives --install /bin/javafxpackager javafxpackager /home/vagrant/jdk1.8.0_241/bin/javafxpackager 1
/usr/bin/update-alternatives --install /bin/appletviewer appletviewer /home/vagrant/jdk1.8.0_241/bin/appletviewer 1
/usr/bin/update-alternatives --install /bin/ControlPanel ControlPanel /home/vagrant/jdk1.8.0_241/bin/ControlPanel 1
/usr/bin/update-alternatives --install /bin/extcheck extcheck /home/vagrant/jdk1.8.0_241/bin/extcheck 1

exit 0



exit 0

