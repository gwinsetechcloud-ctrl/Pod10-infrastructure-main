variable "vpc_cidrblock" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "192.168.0.0/16"
}
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "create_subnet" {
  description = "Flag to create a subnet"
  type        = bool
  default     = true
}

variable "countsub" {
  description = "Number of subnets to create"
  type        = number
  default     = 2
}

variable "create_elastic_ip" {
  description = "Flag to create Elastic IPs"
  type        = bool
  default     = true
}

variable "desired_size" {
  description = "Desired size of the EKS node group"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum size of the EKS node group"
  type        = number
  default     = 6
}

variable "min_size" {
  description = "Minimum size of the EKS node group"
  type        = number
  default     = 2
}

variable "instance_types" {
  description = "Instance types for the EKS node group"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "capacity_type" {
  description = "Capacity type for the EKS node group"
  type        = string
  default     = "ON_DEMAND"
}

variable "eks_version" {
  description = "EKS cluster version"
  type        = string
  default     = "1.32"
}

variable "ami_type" {
  description = "AMI type for the EKS node group"
  type        = string
  default     = "AL2_x86_64"
}

variable "label_one" {
  description = "Label for the EKS node group"
  type        = string
  default     = "system"
}

variable "zone_name" {
  description = "Name of the DNS zone"
  type        = string
  default     = "pod13fintech.online"
}

variable "domain-name" {
  description = "Domain name to be created"
  type        = string
  default     = "pod13fintech.online"
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
  default     = "pod13fintech_db"
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "eks-cluster"
}

variable "repository_name" {
  description = "Name of the ECR repository"
  type        = string
  default     = "eks-repository"
}

variable "email" {
  description = "Email address for notifications and certificates"
  type        = string
  default     = "elizabethik135@gmail.com"
}