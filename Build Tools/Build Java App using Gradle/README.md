# 🛠️ Lab 9 : Build Java Application using Gradle

This lab demonstrates how to build and run a simple Java application using **Gradle**, a powerful build automation tool

---
## ✅ Objectives

- Install Java Development Kit (JDK) and Gradle.
- Clone the Java project from a Git repository.
- Run unit tests to verify code functionality.
- Build the project and generate a JAR artifact.
- Run the application using the generated JAR file.

---

## 🧰 Prerequisites

Make sure the following are installed on your machine:

- Java JDK (8 or higher): `java -version`
- Gradle: `gradle -v`
- Git

---
## 🛠️ 1. Install Java & Gradle

### Install Java 17

```bash
sudo apt update
sudo apt install openjdk-17-jdk -y
```

### Install Gradle 8.7 with script
```bash
#!/bin/bash

# Install dependencies
echo "🔧 Installing required packages..."
sudo apt update && sudo apt install -y wget unzip

# Download Gradle 8.7
echo "⬇️ Downloading Gradle 8.7..."
wget https://services.gradle.org/distributions/gradle-8.7-bin.zip -P /tmp

# Extract Gradle to /opt
echo "📦 Extracting Gradle..."
sudo mkdir -p /opt/gradle
sudo unzip -d /opt/gradle /tmp/gradle-8.7-bin.zip

# Create symbolic link to the latest version
sudo ln -sfn /opt/gradle/gradle-8.7 /opt/gradle/latest

# Set environment variables
echo "⚙️ Configuring environment..."
echo 'export GRADLE_HOME=/opt/gradle/latest' | sudo tee /etc/profile.d/gradle.sh
echo 'export PATH=${GRADLE_HOME}/bin:${PATH}' | sudo tee -a /etc/profile.d/gradle.sh
sudo chmod +x /etc/profile.d/gradle.sh

# Load the environment variables
echo "🔁 Reloading environment..."
source /etc/profile.d/gradle.sh

# Verify installation
echo "✅ Gradle version:"
gradle -v
```
![image](https://github.com/user-attachments/assets/d2cd2367-656d-4a67-a70c-676aca5cb65b)



## 📦 2. Clone the Application Repository
```
git clone https://github.com/ibrahim-Adel15/build1.git
cd build1
```
---

## ✅ 3. Run Unit Tests
```
gradle test
```
![image](https://github.com/user-attachments/assets/c3264142-5f2f-4cc8-b1cf-f5f1d55211c7)

---
## 🧱 4. Build the Application
```
gradle build
```
![image](https://github.com/user-attachments/assets/305bea31-ba2b-49a3-b690-6e0505a31b58)

Artifact will be generated at:
```
build/libs/ivolve-app.jar
```
---
## ▶️ 5. Run the Application
```
java -jar build/libs/ivolve-app.jar
```
![image](https://github.com/user-attachments/assets/9594e7b0-5ef6-4938-8f33-929e874a2445)

