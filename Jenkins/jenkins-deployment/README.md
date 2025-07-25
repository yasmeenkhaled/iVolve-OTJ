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
   <img width="708" height="134" alt="CentOS Jasmine-2025-07-15-21-17-46" src="https://github.com/user-attachments/assets/9426f6cc-1c83-4366-886a-4f9e2cbff9cf" />

  <img width="1186" height="740" alt="CentOS Jasmine-2025-07-19-16-09-43" src="https://github.com/user-attachments/assets/23289702-41c5-4366-80a1-e522939ce1c8" />

6. **Push to Docker Hub**  
   Push the image to your Docker Hub account.

7. **Remove Local Image**  
   Delete the image locally after pushing.

8. **Update `deployment.yaml`**  
   Replace the image tag with the new one using Jenkins `$BUILD_NUMBER`.

9. **Deploy to Kubernetes Cluster**  
   Apply the updated deployment using:
   ```bash
   kubectl apply -f deployment.yaml

