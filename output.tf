output "ami" {
  description = "ID da AMI"
  value       = var.ami_id
}

output "instance_type" {
  description = "Instance Type"
  value       = var.instance_type
}

output "key_name" {
  description = "key name"
  value       = var.key_name
}

output "engine" {
  description = "Database Engine"
  value       = var.engine
}

output "engine_version" {
  description = "Database engine version"
  value       = var.engine_version
}

output "instance_class" {
  description = "Database instance class"
  value       = var.instance_class
}

output "identifier" {
  description = "Database Identifier"
  value       = var.identifier
}

output "username" {
  description = "Database User"
  value       = var.username
}

output "password" {
  description = "Database Password"
  value       = var.password
}

output "ec2_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.ec2_instance.public_ip
}
