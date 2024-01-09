cd /usr/local/bin
./rke2-killall.sh
./rke2-uninstall.sh
./rancher-system-agent-uninstall.sh
cd -
# rancher-system-agent related
systemctl disable rke2-server.service
systemctl stop rke2-server.service
systemctl stop rancher-system-agent.service
systemctl disable rancher-system-agent.service
rm -f /etc/systemd/system/rancher-system-agent.service
rm -f /etc/systemd/system/rancher-system-agent.env
systemctl daemon-reload
rm -f /usr/local/bin/rancher-system-agent
rm -rf /etc/rancher/
rm -rf /var/lib/rancher/
rm -rf /usr/local/bin/rke2*
rm -rf /opt/cni /run/containerd /run/k3s
rm -rf /etc/ceph \
       /etc/cni \
       /etc/kubernetes \
       /etc/rancher \
       /opt/cni \
       /opt/rke \
       /run/secrets/kubernetes.io \
       /run/calico \
       /run/flannel \
       /var/lib/calico \
       /var/lib/etcd \
       /var/lib/cni \
       /var/lib/kubelet \
       /var/lib/rancher\
       /var/log/containers \
       /var/log/kube-audit \
       /var/log/pods \
       /var/run/calico
