resource "aws_ecr_repository" "backend" {
  name                 = "bank-backendapi"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    encryption_type = "AES256"
  }

  tags = {
    Name        = "bank-backendapi"
    Environment = var.environment
  }
}

resource "aws_ecr_repository" "frontend" {
  name                 = "bank-frontend"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    encryption_type = "AES256"
  }

  tags = {
    Name        = "bank-frontend"
    Environment = var.environment
  }
}