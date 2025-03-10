output "ip_address" {
  value       = aws_instance.instance.public_ip
  description = "The public IP address from the EC2 instance."
}

output "tags" {
  value       = aws_instance.instance.tags
  description = "The Names of the EC2 instance"
}

output "instance_id" {
  value       = aws_instance.instance.id
  description = "The ID of the EC2 instance"
}

output "password_data" {
  value       = aws_instance.instance.password_data
  description = "The password data of the EC2 instance"
}

output "region" {
  value       = var.region
  description = "The region of the EC2 instance"
}