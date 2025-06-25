#  Lab 4: Ansible Installation and Basic Configuration

## 🎯 Objectives

-  Install and configure Ansible on the control node
-  Create an inventory file with a managed node
-  Generate SSH key on control node
-  Transfer the public key to the managed node using `ssh-copy-id`
-  Run ad-hoc command to check disk space and validate Ansible connection

---

## 🧾 Steps
### 🔧 1. Install Ansible on the Control Node

 For Debian-based (Ubuntu):
```bash
sudo apt update
sudo apt install ansible -y
```
![image](https://github.com/user-attachments/assets/a02ce647-508b-4fc1-9850-26a671126ba0)
