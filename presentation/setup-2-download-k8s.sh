# Download the Kubernetes components

# Get kubelet
wget -q --show-progress --https-only --timestamping \
https://storage.googleapis.com/kubernetes-release/release/v1.9.7/bin/linux/amd64/kubelet
chmod +x kubelet

# Get kube-apiserver
wget https://storage.googleapis.com/kubernetes-release/release/v1.9.7/bin/linux/amd64/kube-apiserver
chmod +x kube-apiserver

# Get kubectl
wget https://storage.googleapis.com/kubernetes-release/release/v1.9.7/bin/linux/amd64/kubectl
chmod +x kubectl

# Get kube-scheduler
wget https://storage.googleapis.com/kubernetes-release/release/v1.9.7/bin/linux/amd64/kube-scheduler
chmod +x kube-scheduler

# Get kube-controller-manager
wget https://storage.googleapis.com/kubernetes-release/release/v1.9.7/bin/linux/amd64/kube-controller-manager
chmod +x kube-controller-manager

# Get kubeconfig
wget https://raw.githubusercontent.com/joshuasheppard/k8s-by-component/master/part3/kubeconfig

# Get pod definition
wget https://raw.githubusercontent.com/joshuasheppard/k8s-by-component/master/part3/nginx.yaml

# Get deployment definition
wget https://raw.githubusercontent.com/joshuasheppard/k8s-by-component/master/presentation/nginx-deployment.yaml

# Create manifests directory for bare kubelet example
mkdir manifests

# Get etcd setup
mkdir etcd-data

