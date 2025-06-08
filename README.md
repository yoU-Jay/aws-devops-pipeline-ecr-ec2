# aws-devops-pipeline-ecr-ec2
End-to-end DevOps pipeline with GitHub Actions, Docker, Terraform, AWS ECR &amp; EC2. Built collaboratively.

## Project Overview
This project deploys an AWS Elastic Container Registry (ECR) repository using Terraform with a modular and scalable approach. The goal is to create and manage ECR infrastructure as code efficiently.

--- 

## Architecture Diagram

---

## Components Used

- **Terraform**: Infrastructure as Code tool used to provision AWS resources.
- **AWS ECR**: Managed Docker container registry for storing container images.
- **GitHub Actions (optional)**: For CI/CD pipeline running Terraform plans and checks.

---

## Flow

1. Terraform code defines the ECR repository configuration in a modular way.
2. When Terraform is applied, it creates or updates the ECR repository in the specified AWS region.
3. The ECR repository URL is output for use in Docker builds and pushes.
4. GitHub Actions runs Terraform validations and plans on code changes.

---

## Usage

- Customize `dev.tfvars` with your repository name and AWS region.
- Run `terraform init` and `terraform apply -var-file=dev.tfvars` to deploy.

---

This minimal setup helps keep your container images managed in AWS and infrastructure code organized and reusable.
