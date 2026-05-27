terraform {
  backend "s3" {
    bucket  = "bank-app-terraform-state"
    key     = "pod13fintech/dev/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}