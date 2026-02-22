🚀 Spring PetClinic – DevOps Implementation

This repository is based on the official Spring PetClinic project.
My focus was implementing an end-to-end DevOps workflow using Docker, GitHub Actions, and Kubernetes.

🐳 Docker Implementation

Dockerized the application using multi-stage build

Reduced image size using optimized base image

Configured container to run as non-root user

Exposed application on port 8080

Pushed custom image to DockerHub:

docker.io/sai8032/sai_petclinic:1.0
Build & Run Locally
docker build -t sai_petclinic .
docker run -p 8080:8080 sai_petclinic
⚙️ GitHub Actions (CI Pipeline)

Implemented CI using GitHub Actions:

Maven build & test on every push

Automated artifact generation

Docker image build workflow

Ensured application integrity before deployment

Pipeline Flow:

Code Push → Maven Build → Tests → Docker Build
☸️ Kubernetes Deployment

Deployed the application to a Kubernetes cluster using:

Deployment with 4 replicas

RollingUpdate strategy

Revision history for rollback

NodePort Service for external access

The application runs on port 8080 inside the cluster and is exposed externally via NodePort.

Kubernetes Resources Implemented

Deployment

ReplicaSet (managed by Deployment)

Service (NodePort)

Deployment strategy configured:

maxSurge: 1

maxUnavailable: 1

revisionHistoryLimit: 5

📌 Architecture Flow
Code → Docker → GitHub Actions (CI) → Kubernetes Deployment → Service Exposure
🔥 Key Learnings

Declarative infrastructure using kubectl apply -f

Rolling update mechanism in Kubernetes

Container resource management

CI/CD automation workflow

Service exposure in Kubernetes networking

🛠 Tech Stack

Java (Spring Boot)

Docker

GitHub Actions

Kubernetes

Google Cloud VM
