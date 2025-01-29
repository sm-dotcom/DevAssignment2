# Install Ansible on your machine using Linux Bash Script
# nano install-ansible.sh
# chmod +x install-ansible.sh


#!/bin/bash

# Detect Linux distribution
if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$ID
else
    echo "Unsupported OS"
    exit 1
fi

# Install Ansible based on OS
case "$OS" in
    ubuntu|debian)
        echo "Installing Ansible on Ubuntu/Debian..."
        sudo apt update -y
        sudo apt install -y ansible
        ;;
    centos|rhel|fedora)
        echo "Installing Ansible on CentOS/RHEL/Fedora..."
        sudo yum install -y epel-release
        sudo yum install -y ansible
        ;;
    amazon)
        echo "Installing Ansible on Amazon Linux..."
        sudo amazon-linux-extras enable ansible2
        sudo yum install -y ansible
        ;;
    *)
        echo "Unsupported Linux distribution: $OS"
        exit 1
        ;;
esac

# Verify installation
ansible --version

echo "✅ Ansible installation completed!"
