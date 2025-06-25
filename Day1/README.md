# Day1

## Lab 2: Disk Management and Logical Volume Setup

### 🛠️ Objectives

- Attach a new 6 GB disk to your virtual machine.
- Begin by creating two partitions: 2 GB, and 3 GB.
- Initialize the 2 GB partition as a Volume Group (VG) and create a Logical Volume (LV) within it.
- Extend the Logical Volume by adding the 3 GB partition to the existing Volume Group.


 ![image](https://github.com/user-attachments/assets/7e995816-a259-4353-9472-5e1a40a4bb82)
 
 ![image](https://github.com/user-attachments/assets/33ea83b5-9aca-4507-bbfd-9ef71ba205ab)

----

## Lab 3: SSH Configurations

### 🛠️ Objectives

- Generate public & private keys in your local machine.
- Securely transfer the public key to another machine using ssh-copy-id command.
- Configure SSH to just run 'ssh ivolve' to access the remote machine.

## 🧾 Steps Overview
### 1. Generate SSH Key Pair
`ssh-keygen`

![image](https://github.com/user-attachments/assets/a3a25942-fbf5-4a99-88e3-eaf45afc475e)

### 2. Copy Public Key to Remote Server
`ssh-copy-id user@remote_ip`

![image](https://github.com/user-attachments/assets/84385b57-7187-4902-8d59-c84acfcf49d8)

### 3. Connect to Remote Server
`ssh user@remote_ip`

![image](https://github.com/user-attachments/assets/ec896a4d-dcc5-4b7d-99a7-74b152f25fd3)


