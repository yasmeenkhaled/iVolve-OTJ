#!/bin/bash


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
