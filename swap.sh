```bash
#!/bin/bash

# =====================================
# Swap Space Creation Script
# Student Name:hemanth
# Roll Number:1u24it043
# =====================================

# Check current swap status
echo "===== Current Swap Status ====="
free -h
swapon --show

# Create a 1 GB swap file
echo "===== Creating Swap File ====="
sudo fallocate -l 1G /swapfile

# Set correct permissions
echo "===== Setting Permissions ====="
sudo chmod 600 /swapfile

# Format the file as swap
echo "===== Formatting Swap Space ====="
sudo mkswap /swapfile

# Enable swap
echo "===== Enabling Swap ====="
sudo swapon /swapfile

# Verify swap
echo "===== Verifying Swap ====="
swapon --show
free -h

# Make swap permanent after reboot
echo "===== Updating /etc/fstab ====="
echo "/swapfile none swap sw 0 0" | sudo tee -a /etc/fstab

echo "===== Swap Space Created Successfully ====="

exit 0
```
