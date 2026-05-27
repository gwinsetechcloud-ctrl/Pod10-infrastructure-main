terraform {
  backend "s3" {
    bucket  = "pod10-bank-app-terraform-state"
    key     = "pod10fintech/dev/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}