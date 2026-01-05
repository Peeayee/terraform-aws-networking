# AWS Networking with Terraform

## Overview
This project uses **Terraform** to provision core AWS networking infrastructure as code.
It is designed as a learning project to practice AWS fundamentals, Terraform workflows,
and Git-based infrastructure version control.

The infrastructure includes:
- A custom VPC
- A public subnet
- Internet Gateway
- Route tables and associations
- Security groups
- Free Tier–eligible EC2 instances

## Goals
- Learn Infrastructure as Code (IaC) using Terraform
- Understand AWS VPC networking components
- Practice safe cloud workflows (plan, apply, destroy)
- Track infrastructure changes using Git

## Prerequisites
Before using this project, you should have:
- An AWS account
- AWS CLI configured (`aws configure`)
- Terraform installed
- Git installed

## Project Structure
terraform/
├── provider.tf        # AWS provider and region configuration
├── vpc.tf             # VPC definition
├── subnets.tf         # Public subnet configuration
├── routing.tf         # Internet gateway and route tables
├── security.tf        # Security groups
├── ec2.tf             # EC2 instance configuration
├── outputs.tf         # Useful resource outputs

## Usage

Initialize Terraform:
terraform init

Review planned changes:
terraform plan

Apply infrastructure:
terraform apply

Destroy infrastructure when finished:
terraform destroy

## ⚠️ Cost Warning
This project creates AWS resources that **may incur charges**.
Always run `terraform destroy` when you are done testing to avoid unexpected costs.

## Notes
- EC2 instances use Free Tier–eligible instance types when available
- Public IP addresses may change unless an Elastic IP is configured
- Terraform state is stored locally for learning purposes

## Status
This project is under active development and will be expanded to include:
- Additional networking components
- Improved security
- Better documentation and diagrams

