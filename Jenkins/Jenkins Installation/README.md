
# Lab 32: Jenkins Installation

This lab demonstrates how to install and configure **Jenkins**, a popular open-source automation server used for CI/CD.

---

## ✅ Objective

- Install and run Jenkins
- Access Jenkins via web interface
- Configure Jenkins as a service on Linux

---

## 🧰 Requirements

- CentOS (or compatible Linux distro)
- Java 17 or higher
- Root or sudo access
- Internet connection

---

## 🚀 OPTION 1: Install and Configure Jenkins as a Service

### 1. Update your system

```bash
sudo yum update -y
```


### 2. Install Jenkins
```bash
sudo yum install jenkins -y
```
### 3. Start and enable Jenkins service

```bash
sudo systemctl start jenkins
sudo systemctl enable jenkins
```

![photo_6028210089015495272_w](https://github.com/user-attachments/assets/3ff6514e-0abf-4044-966f-775b44c98152)


<img width="1718" height="839" alt="image" src="https://github.com/user-attachments/assets/5e949e69-c024-4e29-ab9a-8cf21bbebccf" />
