# 🔧 Lab 10: Build Java Application using Maven

This lab demonstrates how to build a Java application using **Apache Maven**, a widely used build automation and dependency management tool for Java projects


## ✅ Objectives

- Install Apache Maven on your system.
- Clone a Java project from a Git repository.
- Run unit tests using Maven.
- Build the project to generate a JAR artifact.
- Verify the application runs successfully.

---

## 🧰 Tools & Technologies

- Java (JDK 8 or higher)
- Apache Maven
- Git

---
## 🛠️ 1. Install Maven with script

```bash
#!/bin/bash

# Variables
MAVEN_VERSION=3.9.6
MAVEN_DIR=apache-maven-${MAVEN_VERSION}
MAVEN_TAR=${MAVEN_DIR}-bin.tar.gz
MAVEN_DOWNLOAD=https://downloads.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/${MAVEN_TAR}

# 1. Ensure Java is installed
echo "☕ Checking Java..."
if ! command -v java &> /dev/null; then
    echo "Java not found. Please install Java first."
    exit 1
fi

# 2. Install required tools
echo "🔧 Installing required packages..."
sudo apt update && sudo apt install -y wget tar

# 3. Download Maven
echo "⬇️ Downloading Maven ${MAVEN_VERSION}..."
wget ${MAVEN_DOWNLOAD} -P /tmp

# 4. Extract Maven
echo "📦 Extracting Maven..."
sudo mkdir -p /opt/maven
sudo tar xf /tmp/${MAVEN_TAR} -C /opt/maven

# 5. Symlink to latest
echo "🔗 Linking Maven as default..."
sudo ln -sfn /opt/maven/${MAVEN_DIR} /opt/maven/latest

# 6. Configure environment variables
echo "⚙️ Setting up environment..."
echo 'export MAVEN_HOME=/opt/maven/latest' | sudo tee /etc/profile.d/maven.sh
echo 'export PATH=${MAVEN_HOME}/bin:${PATH}' | sudo tee -a /etc/profile.d/maven.sh
sudo chmod +x /etc/profile.d/maven.sh

# 7. Apply environment changes
echo "🔁 Reloading environment..."
source /etc/profile.d/maven.sh

# 8. Verify installation
echo "✅ Maven version:"
mvn -v

```
![image](https://github.com/user-attachments/assets/363b1c14-5ab5-4eaa-94c3-f303d7dffee9)

---

## 📥 2. Clone the Repository
```
git clone https://github.com/Ibrahim-Adel15/build2.git
cd build2
```
---

## ✅ 3. Run Unit Tests
```
mvn test
```
![image](https://github.com/user-attachments/assets/5e5b88ee-94b0-4b23-afc1-82357438aa5a)

---

## 🏗️ 4. Build the Application
```
mvn package
```
Output JAR will be located at:

`target/hello-ivolve-1.0-SNAPSHOT.jar`

![image](https://github.com/user-attachments/assets/2ed1b7f6-8bf1-498f-b876-aaf320d338a2)

