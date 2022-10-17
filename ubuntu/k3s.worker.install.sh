sudo apt update
sudo apt upgrade -y
sudo apt install -y curl

curl -sfL https://get.k3s.io | K3S_URL=https://myserver:6443 K3S_TOKEN=mynodetoken sh -

cd ~
mkdir .kube
sudo cp /etc/rancher/k3s/k3s.yaml .kube/config
sudo chmod 644 .kube/config
sudo chown $(id -u):$(id -g) .kube/config

echo "export KUBECONFIG=~/.kube/config" >> .bashrc
echo 'alias k="kubectl"' >> .bashrc
source .bashrc