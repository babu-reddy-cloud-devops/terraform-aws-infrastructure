# AWS Infrastructure Automation Using Terraform

## Project Overview

This project automates AWS infrastructure provisioning using Terraform. It uses reusable Terraform modules to organize and manage AWS resources.

## AWS Services Used

- Amazon VPC
- Public and Private Subnets
- Internet Gateway
- NAT Gateway
- Route Tables
- Security Groups
- Amazon EC2
- AWS IAM
- Elastic IP

## Technologies

- Terraform
- AWS
- Git and GitHub
- Linux
- Nginx

## Project Architecture

The infrastructure includes:

1. A custom VPC with public and private subnets.
2. An Internet Gateway for public subnet connectivity.
3. A NAT Gateway for outbound connectivity from the private subnet.
4. Route tables for public and private subnet traffic.
5. Security Groups to control inbound and outbound traffic.
6. An EC2 instance running Amazon Linux 2023.
7. An IAM role with AWS Systems Manager permissions.
8. Nginx installation through EC2 user data.

## Project Structure

```text
terraform-aws-infrastructure/
│
├── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── internet.tf
│   │   ├── nat.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── security-group/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── ec2/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── iam/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── .gitignore
└── README.md
```

## Terraform Commands

Initialize Terraform:

```bash
terraform init
```

Format Terraform files:

```bash
terraform fmt -recursive
```

Validate configuration:

```bash
terraform validate
```

Preview infrastructure changes:

```bash
terraform plan
```

Deploy infrastructure:

```bash
terraform apply
```

**Note:** AWS credentials and an AWS account are required to plan and deploy actual AWS infrastructure. Deployment has not yet been performed for this project.

## Project Objectives

- Build reusable Terraform modules.
- Automate AWS infrastructure provisioning.
- Follow infrastructure-as-code practices.
- Organize cloud resources using modular configurations.
- Improve infrastructure maintainability and reusability.

## Author

B Babu Reddy

AWS | Azure | DevOps | Terraform | DevSecOps