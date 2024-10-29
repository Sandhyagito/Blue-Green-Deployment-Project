# Blue-Green Deployment on Amazon EKS Using CI/CD Pipeline 🟦🟩 

## Architecture Diagram

![Blue-Green Deployment Diagram](https://github.com/Sandhyagito/Blue-Green-Deployment-Project/blob/main/ArchitecturalDiagrams/Blue-Green%20Deploy-Diagram.png)

## Introduction
Blue-Green Deployment is a deployment strategy that ensures seamless updates with zero downtime by running two identical environments:

🔵 Blue Environment: The live environment currently serving all user traffic.
🟢 Green Environment: The testing environment for new releases.

When a new version is deployed, it is first tested in the Green environment. Once verified, traffic is shifted from the Blue environment to Green, ensuring users experience uninterrupted service even during updates.

## Project Overview
This project demonstrates a CI/CD pipeline for a Kubernetes-based application hosted on Amazon EKS, using a Blue-Green Deployment strategy. The infrastructure is managed with Terraform, and the deployment process is orchestrated by Jenkins, enabling automated, zero-downtime application updates.

## Key Components

Terraform: Infrastructure management and provisioning for EKS on AWS.
Jenkins: CI/CD pipeline automation.
SonarQube: Continuous code quality and security analysis.
Nexus: Artifact management and version control.
Docker & DockerHub: Containerization and image storage.
Trivy: Vulnerability scanning for files and Docker images.
Kubernetes RBAC: Secure access management for the EKS cluster.

## Architecture
Continuous Integration & Deployment Pipeline:

Jenkins orchestrates the entire Blue-Green Deployment.
Artifacts are stored in Nexus, and security scans are performed using SonarQube and Trivy.
Docker images are stored in DockerHub and deployed on EKS.

## Traffic Flow:

Load Balancer: Routes traffic based on configuration (Blue or Green) to the appropriate environment.
Kubernetes Service: Handles internal traffic routing to the correct pods.
LoadBalancer Service: Ensures smooth transitions between environments.

## Rollback Mechanism:

If issues arise in the Green environment, traffic can quickly revert to Blue, ensuring production stability.

## Prerequisites
AWS Account: Access to create and manage EC2 instances and EKS clusters.
Basic Understanding of CI/CD: Familiarity with Continuous Integration and Deployment concepts.
GitHub: Experience with source control management.
Knowledge of Jenkins, Docker, and Kubernetes: Basic setup and usage.

## Project Setup
Set Up EKS Cluster Using Terraform: Automate EKS cluster creation with Terraform.
Install Jenkins, SonarQube, and Nexus: Configure these on separate EC2 instances.
Kubernetes RBAC Configuration: Secure cluster access and control permissions for Jenkins.
Create Jenkins Pipeline: Set up a Jenkins pipeline to automate the Blue-Green Deployment.

## Pipeline Job Stages
Git Checkout: Pulls the latest code from GitHub.
Code Compilation and Testing: Uses Maven to compile and test code.
Security Scans: Trivy and SonarQube analyze code quality and security.
Docker Build & Push: Builds Docker images and pushes to DockerHub.
Deploy to Kubernetes: Jenkins deploys the application to the Blue or Green environment on EKS.
Traffic Switching: Configures the LoadBalancer to route traffic to the new environment.
Post-Deployment Verification: Monitors and verifies the new deployment.

## Real-Time Traffic Flow
External DNS: Users access the application through an external DNS.
Load Balancer: Routes requests based on configuration (Blue or Green).
Kubernetes Service: Directs traffic to appropriate pods based on labels.

## Tools Involved
Terraform: Manages AWS infrastructure.
Jenkins: Automates CI/CD pipeline stages.
SonarQube: Ensures code quality.
Nexus: Manages build artifacts.
Trivy: Conducts vulnerability scans.
Docker & DockerHub: Facilitates containerization.
AWS EKS: Manages Kubernetes clusters.

## Accessing the Application
Once the pipeline completes successfully, the application is accessible via the LoadBalancer's external IP or DNS URL.

![Blue-Green Deployment Diagram](https://github.com/Sandhyagito/Blue-Green-Deployment-Project/blob/main/ArchitecturalDiagrams/web%20application.png)

## Conclusion
This project showcases how Blue-Green Deployment can be used to ensure zero downtime during application updates. By using Jenkins, Terraform, SonarQube, and Nexus, the CI/CD pipeline provides an automated, secure, and efficient deployment solution suitable for production environments.

## Ouputs

![Webapps Namespace](https://github.com/Sandhyagito/Blue-Green-Deployment-Project/blob/main/ArchitecturalDiagrams/Webapps-namespace.png)
![Jenkins Build Success](https://github.com/Sandhyagito/Blue-Green-Deployment-Project/blob/main/ArchitecturalDiagrams/Jenkins-build-success.png)
![Jenkins Build Success 1](https://github.com/Sandhyagito/Blue-Green-Deployment-Project/blob/main/ArchitecturalDiagrams/Jenkins-build-success1.png)
![Nexus](https://github.com/Sandhyagito/Blue-Green-Deployment-Project/blob/main/ArchitecturalDiagrams/Nexus.png)
![Sonarqube Analysis](https://github.com/Sandhyagito/Blue-Green-Deployment-Project/blob/main/ArchitecturalDiagrams/Sonarqube%20analysis.png)

## Hashnode Blog url
https://sandhyaops.hashnode.dev/blue-green-deployment-on-amazon-eks-using-cicd-pipeline


