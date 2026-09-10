# 🌍 Terraform Projects

Hands-on AWS infrastructure projects built while learning Terraform — from basic resource creation to remote state management.

## 📂 Projects

| # | Project | What it covers |
|---|---------|-----------------|
| 01 | [Launch_EC2](./Launch_EC2) | Provisions an EC2 instance using variables, outputs, and `terraform.tfvars` |



## ⚙️ Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed
- AWS CLI configured with valid credentials (`aws configure`)
- An existing AWS key pair for SSH access

## 🔒 Security note

`terraform.tfvars`, `*.tfstate`, and `.terraform/` are gitignored — they hold real, environment-specific values and state, and should never be committed. Only `*.tfvars.example` files with placeholder values are tracked.

