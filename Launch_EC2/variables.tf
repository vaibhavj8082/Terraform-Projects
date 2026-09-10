variable "aws_region" {
	description = "AWS region to deploy resources in"
	type = string
	default = "ap-south-1"
}

variable "instance_type" {
	description = "EC2 instance type"
	type = string
	default = "t3.micro"
}

variable "ami_id" {
	description = "AMI ID for the EC2 instance"
	type = string
}

variable "key_name" {
	description = "Name of the SSH key pair to attach to an instance"
	type = string
}

variable "instance_name" {
	description = "Value of the Name tag of the instance"
	type = string
}
