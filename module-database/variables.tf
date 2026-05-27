variable "environment" {
  description = "Deployment environment name"
  type        = string
}

variable "db_instance_class" {
  description = "Instance class for the RDS database"
  type        = string
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "Storage allocated to the DB instance (in GB)"
  type        = number
  default     = 20
}

variable "db_username" {
  description = "Username for the database"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Password for the database"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "servimatch_db"
}

variable "aws_security_group_ids" {
  description = "Security group ID for the database"
  type        = string
}

variable "private_subnet_db_ids" {
  description = "List of private subnet IDs for the database"
  type        = list(string)
}