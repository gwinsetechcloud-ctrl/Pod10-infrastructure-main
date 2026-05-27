variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "domain-name" {
  description = "Domain name to be created"
  type        = string
  default     = "gwinseapptest.online"
}

variable "nginx_ingress_lb_dns" {
  description = "DNS name of the NGINX Ingress Load Balancer"
  type        = string
  default     = ""
}

variable "nginx_lb_ip" {
  description = "IP address of the NGINX Ingress Load Balancer"
  type        = string
  default     = ""
}

variable "nginx_ingress_load_balancer_hostname" {
  description = "Hostname of the NGINX Ingress Load Balancer"
  type        = string
  default     = ""
}