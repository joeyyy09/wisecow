# Containerisation and Deployment of Wisecow Application on Kubernetes

## Project Overview
This project involved containerizing the **Wisecow Application** and deploying it on a **Kubernetes cluster** with secure **TLS communication** and a **Continuous Integration and Deployment (CI/CD)** pipeline using **GitHub Actions**.

**Project Repository:** [https://github.com/nyrahul/wisecow](https://github.com/nyrahul/wisecow)

---

## Implementation Details

### 1. Dockerization
A `Dockerfile` was created to build a container image for the Wisecow application.  
The Dockerfile installs all required dependencies, copies the application source code, and defines the startup configuration.  
The resulting image serves as the base for deployment in the Kubernetes environment.

---

### 2. Kubernetes Deployment
Kubernetes manifest files were developed to define the deployment and service configurations for the Wisecow application.  
- The **Deployment manifest** specifies the container image, replicas, and environment setup.  
- The **Service manifest** exposes the application for external access within the cluster.  
- An **Ingress configuration** was added to manage external traffic and enable TLS-based secure communication.  

The manifests were applied to a local Kubernetes setup (Minikube/Kind) to deploy the containerized Wisecow application successfully.

---

### 3. Continuous Integration and Deployment (CI/CD)
A **GitHub Actions workflow** was configured to automate the build, push, and deployment process.  
- The workflow triggers on code commits or changes to the repository.  
- It builds the Docker image and pushes it to a container registry.  
- Upon successful build and push, the workflow automatically updates the Kubernetes deployment to use the latest image version, achieving continuous deployment.

---

### 4. TLS Implementation
TLS was configured to ensure secure HTTPS communication for the Wisecow application.  
A self-signed certificate and key were generated and stored as Kubernetes secrets.  
The Ingress resource was updated to reference these secrets, enabling encrypted traffic between the client and the application.

---

## Deliverables
- Dockerfile for the Wisecow application.  
- Kubernetes manifests for Deployment, Service, and Ingress.  
- GitHub Actions workflow for CI/CD automation.  
- TLS configuration enabling secure communication.  

---

## End Goal
The project achieved successful containerization and automated deployment of the Wisecow application on a Kubernetes cluster, integrated with a CI/CD pipeline and secured with TLS.