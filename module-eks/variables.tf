variable "vpc_cidrblock" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "192.168.0.0/16"
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

variable "public_subnet_ids" {
  description = "List of public subnet IDs"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
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

variable "domain-name" {
  description = "Domain name to be created"
  type        = string
  default     = "servimatch.online"
}

variable "email" {
  description = "Email address for notifications and certificates"
  type        = string
  default     = "gwinsetech@gmail.com"
}