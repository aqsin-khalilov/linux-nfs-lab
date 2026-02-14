#!/bin/bash

#Install AutoFS
sudo dnf install autofs -y

#Enable and start AutoFS
sudo systemctl enable --now autofs

echo "AutoFS installed and started successfully."

