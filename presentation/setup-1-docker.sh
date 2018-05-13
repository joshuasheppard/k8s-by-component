# Setup an Ubuntu Vagrant box with Docker

# Update the box
sudo apt-get update

# Install some software we will need
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    jq \
    ruby \
    software-properties-common

# Add Docker apt registry and install Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
sudo apt-get update
sudo apt-get install docker-ce

