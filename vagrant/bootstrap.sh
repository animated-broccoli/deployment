# might not need sudo here if you run this as privileged in Vagrantfile
sudo apt-get update
sudo apt-get install git -y
sudo apt-get install mercurial -y


echo "Downloading Go"
curl --silent https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz > /tmp/go.tar.gz
echo "Extracting Go"
tar -xvzf /tmp/go.tar.gz --directory /home/vagrant >/dev/null 2>&1
mv /home/vagrant/go /usr/local/go
echo "Setting Go environment variables"
mkdir /home/vagrant/code
chmod -R 777 /home/vagrant/code
echo 'export GOROOT="/usr/local/go"' >> /home/vagrant/.bashrc
echo 'export GOPATH="/home/vagrant/code"' >> /home/vagrant/.bashrc
echo 'export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"' >> /home/vagrant/.bashrc

export GOPATH="/home/vagrant/code"
export GOROOT="/usr/local/go"
export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"

echo 'alias deploy="go get -d -v github.com/animated-broccoli/vegetable_patch" ' >> /home/vagrant/.bashrc
echo 'alias veggie="/home/vagrant/code/src/github.com/animated-broccoli/vegetable_patch"' >> /home/vagrant/.bashrc

