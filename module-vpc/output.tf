output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.vpc-main.id
  # Removed sensitive = true, vpc_id is not sensitive
}

output "private_subnet_ids" {
  description = "List of private subnet IDs"
  value       = aws_subnet.private_subnet[*].id
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = aws_subnet.public_subnet[*].id
}

output "private_subnet_db_ids" {
  description = "List of private DB subnet IDs"
  value       = aws_subnet.private_subnet_db[*].id
}

output "aws_security_group_ids" {
  description = "Security group ID for MySQL"
  value       = aws_security_group.mysql_sg.id
}