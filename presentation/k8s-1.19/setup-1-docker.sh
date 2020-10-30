# Setup an Ubuntu Vagrant box with Docker

# Update the box
sudo apt-get update
sudo apt-get upgrade

# Install some software we will need
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    jq \
    ruby \
    software-properties-common \
    gcc

# Get updated go version
wget -q --show-progress --https-only --timestamping \
https://dl.google.com/go/go1.15.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.15.2.linux-amd64.tar.gz
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.profile
export PATH=$PATH:/usr/local/go/bin

# Download and build cfssl, cfssljson in ./go/bin/
go get -u github.com/cloudflare/cfssl/cmd/cfssl
go get -u github.com/cloudflare/cfssl/cmd/cfssljson

# Add Docker apt registry and install Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
sudo apt-get update
sudo apt-get install docker-ce

