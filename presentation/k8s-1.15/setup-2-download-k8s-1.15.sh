# Start from the home directory
cd ~/

# Download the Kubernetes components
wget -q --show-progress --https-only --timestamping \
https://storage.googleapis.com/kubernetes-release/release/v1.15.3/bin/linux/amd64/kubelet \
https://storage.googleapis.com/kubernetes-release/release/v1.15.3/bin/linux/amd64/kube-apiserver \
https://storage.googleapis.com/kubernetes-release/release/v1.15.3/bin/linux/amd64/kubectl \
https://storage.googleapis.com/kubernetes-release/release/v1.15.3/bin/linux/amd64/kube-scheduler \
https://storage.googleapis.com/kubernetes-release/release/v1.15.3/bin/linux/amd64/kube-controller-manager
chmod +x kubelet kube-apiserver kubectl kube-scheduler kube-controller-manager

# Get kubeconfig
wget -q --show-progress --https-only --timestamping \
https://raw.githubusercontent.com/joshuasheppard/k8s-by-component/master/part5/kubeconfig

# Get pod definition
wget -q --show-progress --https-only --timestamping \
https://raw.githubusercontent.com/joshuasheppard/k8s-by-component/master/part5/nginx.yaml

# Get pod definition with node name
wget -q --show-progress --https-only --timestamping \
https://raw.githubusercontent.com/joshuasheppard/k8s-by-component/master/part5/nginx-nodeName.yaml

# Get deployment definition
wget -q --show-progress --https-only --timestamping \
https://raw.githubusercontent.com/joshuasheppard/k8s-by-component/master/part5/nginx-deployment.yaml

# Create manifests directory for bare kubelet example
mkdir manifests

# Get etcd setup
mkdir etcd-data

# Generate pem files
wget -q --show-progress --https-only --timestamping \
https://raw.githubusercontent.com/joshuasheppard/k8s-by-component/master/part5/generate-service-account-pems.sh
chmod +x generate-service-account-pems.sh
./generate-service-account-pems.sh

