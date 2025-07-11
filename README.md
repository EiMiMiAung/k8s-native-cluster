# cluster setup
<img width="843" height="909" alt="Screenshot 2025-07-11 at 17 23 12" src="https://github.com/user-attachments/assets/cec37f1f-2233-49e9-b772-46324c61c946" />

# git clone 
# Go to the directory
   cd k8s-native-cluster
   vagrant up

# Hostname set and add master-node(control-plane)
   vagrant ssh ubuntu-cka
   sudo hostnamectl set-hostname master-node
   vi /etc/hosts
   ### Add hostname list
    192.168.90.87 master-node
    192.168.90.88 worker-1
    192.168.90.89 worker-2
    192.168.90.90 worker-3

   ### setup cluster
   ./setup/k8s-install.sh
   ./setup/control-plane.sh

# Create the Calico network plugin for pod networking
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
kubectl get nodes


# Hostname set and add worker-node
   vagrant ssh ubuntu-cka1
   sudo hostnamectl set-hostname worker-1
   vi /etc/hosts
   ### Add hostname list
    192.168.90.87 master-node
    192.168.90.88 worker-1
    192.168.90.89 worker-2
    192.168.90.90 worker-3
   ### setup cluster
   ./setup/k8s-install.sh
   ### join cluster
   sudo kubeadm join 192.168.90.87:6443 --token oo3ptd.3hwsawozg0orbjhf \
        --discovery-token-ca-cert-hash sha256:e59d781f767da480b792eadd4b3c9e2f690db2f188659d6c521729ea5ff8acd6
        
# Hostname set and add worker-node
   vagrant ssh ubuntu-cka1
   sudo hostnamectl set-hostname worker-2
   vi /etc/hosts
   ### Add hostname list
    192.168.90.87 master-node
    192.168.90.88 worker-1
    192.168.90.89 worker-2
    192.168.90.90 worker-3
   ### setup cluster
   ./setup/k8s-install.sh
   ### join cluster
   sudo kubeadm join 192.168.90.87:6443 --token oo3ptd.3hwsawozg0orbjhf \
        --discovery-token-ca-cert-hash sha256:e59d781f767da480b792eadd4b3c9e2f690db2f188659d6c521729ea5ff8acd6

# Hostname set and add worker-node
   vagrant ssh ubuntu-cka2
   sudo hostnamectl set-hostname worker-3
   vi /etc/hosts
   ### Add hostname list
    192.168.90.87 master-node
    192.168.90.88 worker-1
    192.168.90.89 worker-2
    192.168.90.90 worker-3
   ### setup cluster
   ./setup/k8s-install.sh
   ### join cluster
   sudo kubeadm join 192.168.90.87:6443 --token oo3ptd.3hwsawozg0orbjhf \
        --discovery-token-ca-cert-hash sha256:e59d781f767da480b792eadd4b3c9e2f690db2f188659d6c521729ea5ff8acd6
        
