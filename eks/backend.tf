terraform {
  required_version = "~> 1.11.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
 backend "s3" {
    bucket         = "dev-oty-tf-bucket"  # ✅ No trailing space
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    use_lockfile   = true  # ✅ Updated from dynamodb_table
    encrypt        = true
}
}

provider "aws" {
  region  = var.aws-region
}
