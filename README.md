# Lab Spring App Using Java With Docker 

---

This lab demonstrates how to containerize a Java Spring Boot application by building it **inside the Docker container** using a **multi-stage Dockerfile**.

---

## Lab Objectives (Approach 1)

- Build and package a Spring Boot app using Maven inside the container.
- Create a multi-stage Dockerfile (builder + runtime).
- Expose and run the app in a lightweight JDK environment.
- Use Docker CLI to build, run, test, and clean up the container.

---
##  Step 1: Clone the Repository

```bash
git clone https://github.com/lbrahim-Adel15/Docker-1.git
cd Docker-1
```

---
## 🐳 Step 2: Create Dockerfile 
Create a file named `Dockerfile` :
```bash
FROM maven:3.9.6-eclipse-temurin-17

WORKDIR /app

COPY . .

RUN mvn clean package -DskipTests

EXPOSE 8080

CMD ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]
```


##  Step 3: Build the Docker Image
```
docker build -t springboot-demo .
```
![image](https://github.com/user-attachments/assets/31b482ab-b886-441a-998b-bbf0023cec57)


##  Step 4: Run the Container
```
docker run -d --name spring-app -p 8080:8080 springboot-demo
```
![image](https://github.com/user-attachments/assets/730f03a2-c242-4118-9e80-34fb3adac0fc)

## 🔍 Step 5: Test the Application
```
 http://localhost:8080
```
![image](https://github.com/user-attachments/assets/0e09fffd-c818-4259-9859-d0121013b9d0)

---------------------------------------------------------
