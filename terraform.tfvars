# Environment
environment = "dev"

# Network
vpc_cidrblock     = "192.168.0.0/16"
countsub          = 2
create_subnet     = true
create_elastic_ip = true

# EKS
cluster_name   = "eks-cluster"
eks_version    = "1.32"
instance_types = ["t3.small"]
desired_size   = 2
min_size       = 2
max_size       = 6
capacity_type  = "ON_DEMAND"
ami_type       = "AL2_x86_64"
label_one      = "system-nodepool"

# ECR
repository_name = "eks-repository"

# Database
db_name              = "pod13fintech_db"
db_instance_class    = "db.t3.micro"
db_allocated_storage = 20

# DNS
domain-name = "pod13fintech.online"
zone_name   = "pod13fintech.online"
email       = "elizabethik135@gmail.com"

aws_region = "us-east-1"
# Sensitive values — stored in GitHub Actions secrets
# db_username = ""
# db_password = ""