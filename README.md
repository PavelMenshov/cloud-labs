# Cloud & DevOps Labs

Hands-on labs and mini-projects documenting my journey into cloud and DevOps engineering, built with Terraform, Docker, AWS, and Kubernetes. Each folder is a small, self-contained project, and the numbering reflects how my skills grow over time.

## About
 This repository is my public lab notebook and portfolio, growing alongside my certification path.

The goal is simple - everything here runs, everything is written by me, and the commit history shows the progression from first steps to full deployments.

## Certifications in progress

| Certification | Code | Target |
| --- | --- | --- |
| HashiCorp Terraform Associate | TA-004 | Jul 2026 |
| AWS Solutions Architect Associate | SAA-C03 | Aug 2026 |
| AWS DevOps Engineer Professional | DOP-C02 | Oct 2026 |
| Certified Kubernetes Administrator | CKA | Dec 2026 |

## Repository structure

| Folder | Topic | Status |
| --- | --- | --- |
| `01-terraform-basics` | Terraform core workflow: init / plan / apply / destroy, local and Docker providers | Done |
| `02-terraform-docker` | Multi-container setups, networking, variables | Planned |
| `03-terraform-modules` | Reusable modules and clean configuration | Planned |
| `04-aws-vpc` | Networking from scratch: VPC, subnets, route tables, security groups | Planned |
| `05-aws-ec2-s3` | EC2 and S3 provisioned with Terraform (free tier) | Planned |
| `06-aws-serverless` | Lambda and API Gateway | Planned |
| `07-cicd-pipeline` | CI/CD pipeline with GitHub Actions | Planned |
| `08-cloudformation` | Same infrastructure with AWS CloudFormation | Planned |
| `09-k8s-basics` | Kubernetes manifests: Deployment, Service, ConfigMap, Secret | Planned |
| `10-k8s-app` | Deploying a real application to a cluster | Planned |
| `11-terraform-k8s` | Terraform provisions the cluster, app is deployed into it | Planned |

The list will grow as I work through each certification phase.

## Tech stack

- **IaC:** Terraform (HCL), CloudFormation
- **Containers & orchestration:** Docker, Kubernetes
- **Cloud:** AWS (VPC, EC2, S3, Lambda, API Gateway)
- **CI/CD:** GitHub Actions
- **Tooling:** VS Code, Git, Linux/PowerShell

## Running a lab

Each lab is a standalone Terraform project. From inside a lab folder:

```bash
terraform init      # download required providers
terraform plan      # preview the changes
terraform apply     # create the resources (confirm with  yes)
terraform destroy   # tear everything down
```

> Note: AWS labs use free-tier resources and are always destroyed after use to avoid charges.

## Notes

- State files (`*.tfstate`), the `.terraform/` directory, and any credentials are excluded via `.gitignore` and never committed.
- The provider lock file (`.terraform.lock.hcl`) is committed on purpose, as recommended by HashiCorp.
- No real secrets, keys, or account IDs appear anywhere in this repository.
