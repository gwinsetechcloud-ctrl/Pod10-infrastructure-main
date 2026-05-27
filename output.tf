output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc-deployment.vpc_id
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = module.vpc-deployment.public_subnet_ids
}

output "private_subnet_ids" {
  description = "List of private subnet IDs"
  value       = module.vpc-deployment.private_subnet_ids
}

output "eks_cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = module.eks-deployment.cluster_endpoint
}

output "eks_cluster_name" {
  description = "EKS cluster name"
  value       = module.eks-deployment.cluster_name
}

output "nginx_ingress_lb_dns" {
  description = "DNS name of the Nginx Ingress Load Balancer"
  value       = module.eks-deployment.nginx_ingress_lb_dns
}

output "route53_name_servers" {
  description = "Route53 nameservers - add these to Hostinger"
  value       = module.dns-deployment.route53_name_servers
}

output "rds_endpoint" {
  description = "RDS MySQL endpoint"
  value       = module.rds-mysql-deployment.db_endpoint
  sensitive   = true
}