# AutoFS Lab

This lab demonstrates dynamic NFS mounting using AutoFS.

## Why AutoFS?

- Mounts on demand
- Prevents boot delay
- Automatically unmounts when inactive

## Installation

bash autofs-install.sh

## Configuration Example

Edit /etc/auto.master:
    /mnt/nfs  /etc/auto.nfs

Create /etc/auto.nfs:
    shared  -rw,sync  192.168.1.108:/data/shared

Restart service:
    systemctl restart autofs

## Test

ls /mnt/nfs/shared
mount | grep nfs

