🐳 Spring PetClinic – Dockerized CI/CD Deployment on Kubernetes

This repository contains the Spring PetClinic application, containerized and deployed using modern DevOps practices including Docker, CI with GitHub Actions, and Kubernetes deployment.

The purpose of this project is to demonstrate how a traditional Spring Boot application can be transformed into a cloud-ready application using containerization and automated CI/CD workflows.

Spring PetClinic is a widely used reference application that demonstrates how the Spring ecosystem can be used to build database-driven web applications.

🧑‍💻 My Contributions (DevOps)

In this project, I focused on implementing the DevOps workflow required to build, package, and deploy the application.

🐳 Docker – Containerization

I containerized the Spring Boot application so that it can run consistently across environments.

Tasks performed:

Created a Dockerfile

Built the Docker image using multi-stage builds

Tested the container locally

Pushed the image to Docker Hub

Docker Image:

sai8032/sai_petclinic:1.0

Run locally:

docker pull sai8032/sai_petclinic:1.0
docker run -p 8080:8080 sai8032/sai_petclinic:1.0
⚙️ CI Pipeline – GitHub Actions

A CI pipeline was implemented using GitHub Actions to automate the application build.

Pipeline workflow

Code pushed to GitHub

GitHub Actions triggers pipeline

Maven builds the application

Docker image is built

Image is pushed to Docker Hub

Pipeline trigger:

Pull Request → main branch
Manual trigger (workflow_dispatch)
☸️ Kubernetes Deployment

The application is deployed into a Kubernetes cluster using Kubernetes manifests.

Resources created:

Namespace

Deployment

Service

Kubernetes Features Used

Replica based scaling

Container orchestration

Service networking

Pod lifecycle management

Deploy the application:

kubectl apply -f k8s/

Verify deployment:

kubectl get pods
kubectl get svc
🏗️ Architecture
Developer
   ↓
GitHub Repository
   ↓
GitHub Actions CI Pipeline
   ↓
Docker Image Build
   ↓
Docker Hub Registry
   ↓
Kubernetes Deployment
   ↓
Spring Boot Pods
   ↓
Kubernetes Service
🛠️ Technologies Used
Technology	Purpose
Java	Application language
Spring Boot	Backend framework
Maven	Build tool
Docker	Containerization
GitHub Actions	CI pipeline
Kubernetes	Container orchestration
Docker Hub	Image registry
📂 Project Structure
spring-petclinic-practice
│
├── Dockerfile
├── .github/workflows
│   └── ci.yml
│
├── k8s
│   ├── namespace.yaml
│   ├── deployment.yaml
│   └── service.yaml
│
└── src
🚀 How to Run the Project
Clone Repository
git clone https://github.com/Sai2932000/spring-petclinic-practice
cd spring-petclinic-practice
Build Application
./mvnw package
Run Locally
java -jar target/*.jar

Application runs on:

http://localhost:8080
📚 What I Learned

Through this project I gained hands-on experience with:

Containerizing applications using Docker

Automating builds using GitHub Actions

Building a CI pipeline

Deploying applications in Kubernetes

Understanding container orchestration

🔮 Future Improvements

Possible improvements for the project:

Implement CD pipeline

Add Helm charts

Configure Kubernetes Ingress

Add Prometheus & Grafana monitoring

Implement Rolling Updates
