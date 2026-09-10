output "instance_id" {
	description = "ID of the EC2 instance"
	value = aws_instance.my_ec2.id
}

output "instance_public_ip" {
	description = "Public IP of the instance"
	value = aws_instance.my_ec2.public_ip
}

output "instance_public_dns" {
	description = "Public DNS of the instance"
	value = aws_instance.my_ec2.public_dns
}
