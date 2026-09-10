# 🌍 Terraform Projects

Hands-on AWS infrastructure projects built while learning Terraform — from basic resource creation to remote state management.

## 📂 Projects

### 01 — [Launch_EC2](./Launch_EC2)
Provisions a single AWS EC2 instance using Terraform. The AMI, instance type, region, SSH key pair, and instance name are all parameterized through **variables** (`variables.tf`) instead of being hardcoded, with actual values supplied via `terraform.tfvars`. After `apply`, **outputs** (`outputs.tf`) print the instance's ID, public IP, and public DNS — so you don't have to check the AWS console to get connection details.

*(More projects added as I progress — remote state management with S3 + DynamoDB, custom security groups, custom VPC, and more.)*

## ⚙️ Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed
- AWS CLI configured with valid credentials (`aws configure`)
- An existing AWS key pair for SSH access

## 🚀 Usage

```bash
cd <project-folder>
cp terraform.tfvars.example terraform.tfvars   # add your own values
terraform init
terraform plan
terraform apply
```

When you're done:
```bash
terraform destroy
```

## 🔒 Security note

`terraform.tfvars`, `*.tfstate`, and `.terraform/` are gitignored — they hold real, environment-specific values and state, and should never be committed. Only `*.tfvars.example` files with placeholder values are tracked.

