🚀 Spring PetClinic – DevOps Practice Project

This repository contains a DevOps implementation of the Spring PetClinic application, focusing on containerization, CI automation, and Kubernetes deployment.

The Spring PetClinic is a well-known sample application used to demonstrate how the Spring ecosystem (Spring Boot, Spring MVC, Spring Data) can be used to build real-world web applications.

In this project, the focus is not on application development but on building a DevOps workflow around the application.

🏗 Architecture
Code
  │
  ▼
🐳 Docker Containerization
  │
  ▼
⚙️ GitHub Actions CI Pipeline
  │
  ▼
📦 Docker Image (DockerHub)
  │
  ▼
☸️ Kubernetes Deployment
  │
  ▼
🌐 Service Exposure

🐳 Docker Implementation

The application was containerized using Docker best practices.

Features

Multi-stage Docker build

Reduced image size using optimized base images

Container configured to run as a non-root user

Application exposed on port 8080

Docker image published to DockerHub:

docker.io/sai8032/sai_petclinic:1.0
▶️ Build and Run Locally

Build the Docker image:

docker build -t sai_petclinic .

Run the container:

docker run -p 8080:8080 sai_petclinic

Access the application:

http://localhost:8080

⚙️ GitHub Actions – CI Pipeline

A CI pipeline was implemented using GitHub Actions.

Pipeline stages:

Code Push
   ↓
🔨 Maven Build
   ↓
🧪 Unit Tests
   ↓
🐳 Docker Image Build
Workflow features

Automated build and test execution

Docker image build during pipeline

Continuous validation of application integrity

☸️ Kubernetes Deployment

The containerized application was deployed into a Kubernetes cluster.

Deployment configuration

Deployment with 4 replicas

RollingUpdate strategy

Revision history for rollback support

NodePort service for external access

The application runs on:

Port 8080 inside the cluster

and is exposed externally through:

NodePort Service
📦 Kubernetes Resources Used

This project includes the following Kubernetes resources:

Deployment

ReplicaSet (managed by Deployment)

Service (NodePort)

Deployment strategy configuration:

maxSurge: 1
maxUnavailable: 1
revisionHistoryLimit: 5
🧠 Key DevOps Concepts Practiced

Through this project I practiced:

Containerizing applications with Docker

Implementing CI pipelines using GitHub Actions

Deploying workloads on Kubernetes

Understanding rolling update strategies

Managing container resources

Exposing applications using Kubernetes services

🛠 Tech Stack

Java (Spring Boot)

Docker

GitHub Actions

Kubernetes

Linux

Google Cloud VM

🔗 Repository

GitHub Repository:

https://github.com/Sai2932000/spring-petclinic-practice
📈 Future Improvements

Planned enhancements for this project:

Kubernetes Horizontal Pod Autoscaler (HPA)

Ingress controller for external routing

Helm charts for templated deployments

GitOps workflow (ArgoCD / Flux)

👨‍💻 Author

Thumma Sai Kumar

GitHub
https://github.com/Sai2932000
