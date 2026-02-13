#!/bin/bash

#Install NFS
sudo dnf install nfs* -y

#Created shared directory
sudo mkdir -p /data/shared
sudo chown nfsnobody:nfsnobody /data/shared
sudo chmod 755 /data/shared

#Configure exports
echo "/data/shared *(rw,sync,no_root_squash)" | sudo tee /etc/exports

#Start and enable NFS
sudo systemctl enable --now nfs-server
sudo exportfs -rav

#Open firewall
sudo firewall-cmd --add-service=nfs --permanent
sudo firewall-cmd --add-service=rpc-bind --permanent
sudo firewall-cmd --add-service=mountd --permanent
sudo firewall-cmd --reload

