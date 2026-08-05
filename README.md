# 🚀 Spring Boot CI/CD Pipeline on Google Kubernetes Engine (GKE)

[![GitHub Actions](https://img.shields.io/badge/GitHub-Actions-2088FF?logo=github-actions&logoColor=white)]()
[![Java](https://img.shields.io/badge/Java-17-orange)]()
[![Spring Boot](https://img.shields.io/badge/Spring_Boot-3.x-6DB33F?logo=springboot)]()
[![Docker](https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=white)]()
[![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?logo=kubernetes&logoColor=white)]()
[![Google Cloud](https://img.shields.io/badge/Google_Cloud-4285F4?logo=googlecloud&logoColor=white)]()

---

# 📖 Overview

This project demonstrates a **production-inspired CI/CD pipeline** for deploying a **Spring Boot** application on **Google Kubernetes Engine (GKE)** using **GitHub Actions**.

The pipeline automates the complete software delivery lifecycle:

- Build
- Unit Testing
- Code Coverage
- Docker Image Creation
- Vulnerability Scanning
- Image Publishing
- Kubernetes Deployment

The objective of this project is to showcase modern DevOps practices including **Continuous Integration, Continuous Deployment, Containerization, Kubernetes orchestration, and automated software delivery**.

---

# 🏗 Solution Architecture

```text
                 Developer
                     │
                     ▼
              GitHub Repository
                     │
                     ▼
             GitHub Actions CI/CD
                     │
      ┌──────────────┼──────────────┐
      │              │              │
      ▼              ▼              ▼
 Maven Build     Unit Tests    JaCoCo Report
                     │
                     ▼
              Build Docker Image
                     │
                     ▼
        Trivy Vulnerability Scan
                     │
                     ▼
     Google Artifact Registry (GAR)
                     │
                     ▼
      Google Kubernetes Engine (GKE)
                     │
                     ▼
           Kubernetes Deployment
                     │
                     ▼
              LoadBalancer Service
                     │
                     ▼
                  End Users
```

---

# ✨ Features

## Continuous Integration

- Automated workflow execution using GitHub Actions
- Maven dependency caching
- Spring Boot application build
- Automated unit testing
- JaCoCo code coverage generation
- Upload build artifacts
- Upload test reports

---

## Containerization

- Docker image creation
- Multi-stage Docker build
- Lightweight production image
- Image versioning using Git commit SHA

---

## Security

- Trivy vulnerability scanning
- OS package scanning
- Application dependency scanning
- Pipeline fails on High & Critical vulnerabilities

---

## Container Registry

- Secure authentication with Google Cloud
- Push Docker images to Google Artifact Registry

---

## Continuous Deployment

- Authenticate with Google Cloud
- Connect to Google Kubernetes Engine
- Deploy Kubernetes manifests
- Rolling application updates
- Deployment verification

---

# ⚙️ CI/CD Pipeline

```text
GitHub Push
      │
      ▼
Checkout Source
      │
      ▼
Build Application
      │
      ▼
Run Unit Tests
      │
      ▼
Generate Code Coverage
      │
      ▼
Upload Build Artifacts
      │
      ▼
Download Artifact
      │
      ▼
Docker Build
      │
      ▼
Trivy Security Scan
      │
      ▼
Push Image to Artifact Registry
      │
      ▼
Deploy to GKE
      │
      ▼
Rolling Update
      │
      ▼
Deployment Verification
```

---

# ☸ Kubernetes Resources

This project deploys the application using:

- Namespace
- Deployment
- Service (LoadBalancer)

Deployment strategy:

- Rolling Update

---

# 🛠 Technology Stack

| Category | Technologies |
|----------|--------------|
| Programming Language | Java 17 |
| Framework | Spring Boot |
| Build Tool | Maven |
| CI/CD | GitHub Actions |
| Containerization | Docker |
| Security | Trivy |
| Container Registry | Google Artifact Registry |
| Orchestration | Kubernetes (GKE) |
| Cloud Platform | Google Cloud Platform |
| Version Control | Git & GitHub |

---

# 📁 Project Structure

```text
.
├── .github
│   └── workflows
│       └── ci-cd.yml
│
├── k8s
│   ├── namespace.yaml
│   ├── deployment.yaml
│   └── service.yaml
│
├── src
│
├── Dockerfile
├── pom.xml
├── README.md
└── .gitignore
```

---

# 🔐 GitHub Secrets

The workflow uses GitHub Secrets for secure authentication.

| Secret | Description |
|---------|-------------|
| GCP_PROJECT_ID | Google Cloud Project ID |
| GCP_REGION | Artifact Registry Region |
| GAR_REPOSITORY | Artifact Registry Repository |
| GKE_CLUSTER | Kubernetes Cluster Name |
| GKE_ZONE | GKE Cluster Zone |
| GCP_SA_KEY | Google Cloud Service Account JSON |

---

# 🚀 Running Locally

## Build

```bash
mvn clean package
```

## Build Docker Image

```bash
docker build -t petclinic .
```

## Run Container

```bash
docker run -p 8080:8080 petclinic
```

---

# 📷 Screenshots

Add screenshots of:

- GitHub Actions Pipeline
- Docker Build Logs
- Trivy Scan Results
- Google Artifact Registry
- GKE Workloads
- Kubernetes Pods
- Running Application

---

# 🔮 Future Enhancements

- Infrastructure provisioning with Terraform
- Horizontal Pod Autoscaler (HPA)
- Helm Charts
- Prometheus & Grafana Monitoring
- GitOps using ArgoCD
- SSL with Google Managed Certificates
- Kubernetes Ingress
- Slack Notifications

---

# 📚 Key Learning Outcomes

Through this project, I gained practical experience with:

- Designing CI/CD pipelines using GitHub Actions
- Automating Java application builds
- Docker image creation and optimization
- Container security scanning
- Google Artifact Registry
- Kubernetes deployments
- Rolling updates
- Kubernetes service exposure
- Secure secret management
- End-to-end software delivery automation

---

# 👨‍💻 Author

**Sai Thumma**

DevOps Engineer | Docker | Kubernetes | GitHub Actions | Terraform | Google Cloud Platform | Linux

---

⭐ If you found this project useful, feel free to star the repository.