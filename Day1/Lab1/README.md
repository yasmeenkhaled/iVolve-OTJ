
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
