# Day1
## Lab 1: Shell Scripting Basics

### 🛠️ Objectives

- Install MySQL database.
- Create a directory to store database backups.
- Write a shell script to take a backup using `mysqldump`.
- Schedule the script using `cron` to run every day at 5:00 PM.

---

##  Install MySQL Database

To install MySQL on a Debian-based system :

```bash
sudo apt update
sudo apt install mysql-server
```
![image](https://github.com/user-attachments/assets/208fcc83-176d-47ec-bffa-0f710fa6dad7)


## Shell Script
```
#! /bin/bash
DB_USER=" root"
DB_PASSWORD="2233"
DB_NAME="mysql"
BACKUP_DIR=/home/jess/Downloads/ivolve/database_backups
• DATE=$(date +%F)
BACKUP_FILE="SBACKUP_DIR/MySQL_backup_$DATE.sql"
sudo mysqldump -u root $DB_NAME > $BACKUP_FILE
```

![photo_5967634935424600502_x](https://github.com/user-attachments/assets/544adcfa-3428-4ea4-8968-4c9bc5063131)

## Run CronTab and Screen Backupfile

![photo_5967634935424600501_y](https://github.com/user-attachments/assets/f67c1e08-09a6-4419-9de0-7c81ad56b334)

-------------------------------------------

![photo_5967634935424600500_x](https://github.com/user-attachments/assets/023d775a-edd9-4ea5-98cc-4e8bdaeef854)


----

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


![image](https://github.com/user-attachments/assets/0162ee3f-74e1-48dd-b49c-18cbc046ed34)

![image](https://github.com/user-attachments/assets/047afdca-acef-4bb0-a980-42c9422242e7)
