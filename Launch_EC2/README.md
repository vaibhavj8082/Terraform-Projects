# Terraform Projects

Hands-on Terraform projects, built while learning infrastructure as code on AWS.

## Projects

| Project | Concepts |
|---|---|
| [Launch_EC2](./Launch_EC2) | Variables, outputs, `terraform.tfvars` |

## Prerequisites

- Terraform installed
- AWS CLI configured (`aws configure`) with valid credentials
- An existing AWS key pair (for SSH access)

## General Usage

Each project folder is self-contained. To run one:

```bash
cd <project-folder>
cp terraform.tfvars.example terraform.tfvars   # fill in your own values
terraform init
terraform plan
terraform apply

# when done
terraform destroy
```

## Note

`terraform.tfvars`, `*.tfstate`, and `.terraform/` are gitignored on purpose — they contain real, environment-specific values and local state. Only `*.tfvars.example` files (placeholder values) are committed.

