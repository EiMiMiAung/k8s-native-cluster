vi /etc/hosts
hostname
sudo hostnamectl set-hostname master-node
hostname
vi /etc/hosts
sudo vi /etc/hosts
sudo reboot
sudo hostnamectl set-hostname worker-2
hostname
vi /etc/hosts
sudo vi /ect/hosts
sudo vi /etc/hosts
sudo reboot
sudo hostnamectl set-hostname worker-1
sudo hostname
sudo /etc/hosts
sudo vi /etc/hosts
sudo reboot
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl gpg
cd /etc/apt
ls
ls -la
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.33/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.33/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
kubectl version --client && kubeadm version
sudo swapoff -a
#Load br_netfilter module
sudo modprobe overlay
sudo modprobe br_netfilter
cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
overlay
br_netfilter
EOF

cat <<EOF | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf
net.bridge.bridge-nf-call-iptables  = 1
net.ipv4.ip_forward                 = 1
net.bridge.bridge-nf-call-ip6tables = 1
EOF

# Apply sysctl params without reboot
sudo sysctl --system
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
# Set up the repository
echo   "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# Install containerd
sudo apt-get update
sudo apt-get install -y containerd.io=1.7.19-1
sudo mkdir -p /etc/containerd
containerd config default | sudo tee /etc/containerd/config.toml
sudo sed -i 's/SystemdCgroup = false/SystemdCgroup = true/' /etc/containerd/config.toml
sudo systemctl restart containerd
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.30/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
# Add the Kubernetes release repository
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.30/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
# Update the package index to include the Kubernetes repository
sudo apt-get update
# Install the packages
sudo apt-get install -y kubelet kubeadm kubectl
kubectl get nodes
kubectl 
sudo kubeadm init --pod-network-cidr=192.168.0.0/16 
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl get componentstatuses
kubectl get nodes
kubectl describe nodes
kubectl get nodes
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
kubectl get nodes
cd ~/.kube/
cat config 
kubectl get nodes
kubectl get pods -n kube-system
sudo netstat -tulnp | grep 6443
ps aux | grep kube-apiserver
kubectl get nodes
ip addr
netstat -tulnp | grep 6443
telnet 10.0.2.15 6443
sudo kubeadm reset -f
sudo systemctl stop kubelet
sudo systemctl start kubelet
sudo kubeadm init --apiserver-advertise-address=10.0.2.15 --pod-network-cidr=10.244.0.0/16
kubectl get nodes
 mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl get nodes
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
kubectl get nodes
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl get nodes
  sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl get nodes
exit
kubrctl
kube
kubectl
kubectl get nodes
kubectl get nodes
kubeadm init phase upload-certs --upload-certs
sudo kubeadm init phase upload-certs --upload-certs
sudo kubeadm token create --print-join-command
sudo kubeadm token create --print-join-command
kubectl get nodes
kubectl get nodes
exit
./setup/k8s-install.sh 
sudo kubeadm join 10.0.2.15:6443 --token rttbu2.8j5q1bikca8miu60         --discovery-token-ca-cert-hash sha256:36d3e63c58617e7e90a41c22a9d58664a434c5d71df830a94277423ce7828f59 
telnet 10.0.2.15 6443
sudo kubeadm join 10.0.2.15:6443 --token tgab0v.kr47ria47edsxa3b --discovery-token-ca-cert-hash sha256:d5a9870e3922654cae3ff22e1c85bd4408795c7880710c23073b1f0795f3c847 --control-plane --certificate-key df5b88730565c5b08c257876ae4f290cdbbf0a78bff9d47e15579d0c65f2a4bc
sudo apt-mark hold kubelet kubeadm kubectl
sudo kubeadm join 10.0.2.15:6443 --token tgab0v.kr47ria47edsxa3b --discovery-token-ca-cert-hash sha256:d5a9870e3922654cae3ff22e1c85bd4408795c7880710c23073b1f0795f3c847 --control-plane --certificate-key df5b88730565c5b08c257876ae4f290cdbbf0a78bff9d47e15579d0c65f2a4bc
kubectl get nodes
cat ~/.kube/config
exit
./setup/k8s-install.sh 
chmod +x ./setup/contol-plane.sh 
./setup/contol-plane.sh 
./setup/contol-plane.sh 
./setup/contol-plane.sh 
kubectl get node
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
vi /etc/hosts
sudo vi /etc/hosts
ping worker-1
sudo vi /etc/hosts
kubectl get nodes
cat ~/.kube/config 
exit
./setup/k8s-install.sh 
./setup/contol-plane.sh 
clear
kubectl get nodes
kubeadm token create --print-join-command
cat ~/.kube/config 
clear
exit
./setup/k8s-install.sh 
./setup/contol-plane.sh 
./setup/contol-plane.sh 
reboot
./setup/contol-plane.sh 
exit
./setup/k8s-install.sh 
./setup/contol-plane.sh 
kubectl get nodes
cat ~/.kube/config 
kubectl get nodes
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
kubectl get nodes
kubectl get nodes
kubectl get nodes
kubeadm token create --print-join-command
kubeadm token create --print-join-command
kubectl get nodes
kubectl get nodes
kubectl get nodes
kubectl get nodes
kubectl get nodes
kubectl get nodes
kubectl get nodes
kubectl get nodes
kubectl get nodes
kubectl get nodes
kubectl get nodes
kubectl get nodes
kubectl get nodes
kubectl get nodes
kubectl get nodes
kubectl get nodes
kubectl get nodes
kubectl get nodes
kubectl get nodes
kubectl get nodes
kubectl get pods -A
kubectl get nodes
kubectl create deployment webserver --image=nginx --replicas=3 --dry-run=clients -o yaml > webserver.ymal
kubectl create deployment webserver --image=nginx --replicas=3 --dry-run=client -o yaml > webserver.ymal
cat webserver.ymal 
kubectl get pods
kubectl create ns test
kubectl apply -f webserver.ymal -n test
kubectl get pods - test
kubectl get pods -n test
kubectl get pods -n test
kubectl get pods -n test -o wide
kubectl cordon ubuntu-cka2
kubectl get nodes
kubectl sclae deployment wevserver --replicas=5 -n test
kubectl scalee deployment wevserver --replicas=5 -n test
kubectl scale deployment wevserver --replicas=5 -n test
kubectl scale deployment webserver --replicas=5 -n test
kubectl get pods -n test -o wide
kubectl drain ubuntu-cka2
kubectl drain ubuntu-cka2 --ignore-daemonsets
kubectl get pods -n test -o wide
kubectl get nodes -o wide
kubectl uncordon ubuntu-cka2
kubectl get nodes -o wide
kubectl scale deployment webserver replicas=7 -n test
kubectl scale deployment webserver --replicas=7 -n test
kubectl get nodes -o wide
kubectl get pods -n test -o wide
sudo hostnamectl set-hostname master-node 
kubectl get pods -n test -o wide
kubectl get nodes -o wide
exit
sudo vi /etc/hosts
./setup/k8s-install.sh 
./setup/contol-plane.sh 
kubectl get nodes -o wide
sudo hostnamectl set-hostname master-node
kubectl get nodes -o wide
exit
exit
