#!/bin/bash

#Install NFS client utilities
sudo dnf install nfs* -y

#Create mount point
sudo mkdir -p /mnt/nfs

#Mount NFS share
sudo mount -t <SERVER_IP>:/data/shared /mnt/nfs

#Test permissions
ls -l /mnt/nfs


