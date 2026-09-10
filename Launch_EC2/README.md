# Launch EC2

Provisions a single AWS EC2 instance using Terraform, with all key values parameterized through variables instead of hardcoded.

## What it does

- Launches one `aws_instance` in the region/AMI/instance type you specify
- Attaches the SSH key pair you specify
- Tags the instance with a custom name
- Prints the instance ID, public IP, and public DNS as outputs after `apply`

## Files

| File | Purpose |
|---|---|
| `main.tf` | Provider and EC2 resource definition |
| `variables.tf` | Input variable declarations |
| `outputs.tf` | Outputs: instance ID, public IP, public DNS |
| `terraform.tfvars.example` | Placeholder values — copy to `terraform.tfvars` and fill in your own |

## Usage

```bash
cp terraform.tfvars.example terraform.tfvars   # add your real values
terraform init
terraform plan
terraform apply
```

When done:
```bash
terraform destroy
```

## Variables

| Name | Description | Default |
|---|---|---|
| `aws_region` | AWS region | `ap-south-1` |
| `ami_id` | AMI ID for the instance | none (required) |
| `instance_type` | EC2 instance type | `t2.micro` |
| `key_name` | Existing AWS key pair name | none (required) |
| `instance_name` | Name tag for the instance | `MyTerraformInstance` |

## Outputs

- `instance_id`
- `instance_public_ip`
- `instance_public_dns`
