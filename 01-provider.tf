terraform {
  required_version = ">= 1.10.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.12"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

data "aws_eks_cluster_auth" "eks" {
  name = module.eks-deployment.cluster_name
}

provider "helm" {
  kubernetes {
    host                   = module.eks-deployment.cluster_endpoint
    cluster_ca_certificate = base64decode(module.eks-deployment.cluster_ca_certificate)
    token                  = data.aws_eks_cluster_auth.eks.token
  }
}

provider "kubernetes" {
  host                   = module.eks-deployment.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks-deployment.cluster_ca_certificate)
  token                  = data.aws_eks_cluster_auth.eks.token
}