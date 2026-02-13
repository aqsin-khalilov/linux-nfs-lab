# linux-nfs-lab
Infrastructure lab: Secure NFS file sharing architecture built on Linux with service hardening.

## Project Goal
Build and configure a secure NFS server-client architecture in a Linux environment.

## Architecture
- 1 VM → NFS Server
- 1 VM → NFS Client
- Shared directory → /data/shared
- Persistent mount
- Firewall and permission configuration

## Technologies Used
- Linux (AlmaLinux / RHEL)
- NFS
- Firewalld
- SELinux

## What I Learned
- Network file sharing
- Linux permissions
- Service management
- Security hardening

## Advanced Topics

### root_squash vs no_root_squash
- root_squash: Client-side root user is mapped to anonymous user (nfsnobody).
- no_root_squash: Client root keeps root privileges on the server (not recommended for production).

### NFSv3 vs NFSv4
- NFSv3 uses multiple ports (rpcbind, mountd).
- NFSv4 primarily uses port 2049 and is more firewall-friendly.
- NFSv4 supports stateful operations and improved security.

### SELinux Considerations
If SELinux is enforcing, proper context must be applied:
setsebool -P nfs_export_all_rw on

