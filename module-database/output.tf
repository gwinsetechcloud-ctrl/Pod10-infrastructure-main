output "db_endpoint" {
  description = "RDS MySQL endpoint"
  value       = aws_db_instance.mysql_db_instance.endpoint
  sensitive   = true
}