sudo yum update
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo 
sudo yum install -y docker-ce --enablerepo=docker* 
sudo start docker
sudo systemctl enable docker