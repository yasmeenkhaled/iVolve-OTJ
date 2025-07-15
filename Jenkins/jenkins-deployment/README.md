# Jenkins CI/CD Pipeline for Docker + Kubernetes Deployment

This project demonstrates a CI/CD pipeline using Jenkins, Docker, and Kubernetes.

## 🔧 Technologies Used
- Jenkins
- Docker
- Docker Hub
- Kubernetes (Minikube or other)
- GitHub

## 🧪 Lab 34 Objective

Automate the following steps using a Jenkins pipeline:

1. **Clone source code and Dockerfile**  
   From GitHub:  
   [`https://github.com/Ibrahim-Adel15/Jenkins_App.git`](https://github.com/Ibrahim-Adel15/Jenkins_App.git)

2. **Run Unit Test**  
   Run available unit tests (if any).

3. **Build App**  
   Build the application if necessary.

4. **Build Docker Image**  
   Build Docker image from the included `Dockerfile`.

5. **Push to Docker Hub**  
   Push the image to your Docker Hub account.

6. **Remove Local Image**  
   Delete the image locally after pushing.

7. **Update `deployment.yaml`**  
   Replace the image tag with the new one using Jenkins `$BUILD_NUMBER`.

8. **Deploy to Kubernetes Cluster**  
   Apply the updated deployment using:
   ```bash
   kubectl apply -f deployment.yaml

