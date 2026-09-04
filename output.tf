output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "ID of the created subnet"
  value       = aws_subnet.main.id
}

output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.server.id
}

output "current_workspace" {
  description = "Currently active Terraform workspace"
  value       = terraform.workspace
}