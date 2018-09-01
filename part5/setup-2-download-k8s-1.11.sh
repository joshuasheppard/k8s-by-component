# Download the Kubernetes components

# Get kubelet
wget -q --show-progress --https-only --timestamping \
https://storage.googleapis.com/kubernetes-release/release/v1.11.2/bin/linux/amd64/kubelet
chmod +x kubelet

# Get kube-apiserver
wget -q --show-progress --https-only --timestamping \
https://storage.googleapis.com/kubernetes-release/release/v1.11.2/bin/linux/amd64/kube-apiserver
chmod +x kube-apiserver

# Get kubectl
wget -q --show-progress --https-only --timestamping \
https://storage.googleapis.com/kubernetes-release/release/v1.11.2/bin/linux/amd64/kubectl
chmod +x kubectl

# Get kube-scheduler
wget -q --show-progress --https-only --timestamping \
https://storage.googleapis.com/kubernetes-release/release/v1.11.2/bin/linux/amd64/kube-scheduler
chmod +x kube-scheduler

# Get kube-controller-manager
wget -q --show-progress --https-only --timestamping \
https://storage.googleapis.com/kubernetes-release/release/v1.11.2/bin/linux/amd64/kube-controller-manager
chmod +x kube-controller-manager

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
chmod +x generate-service-account-pems.sh
./generate-service-account-pems.sh

