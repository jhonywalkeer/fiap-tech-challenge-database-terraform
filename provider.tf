terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
      region  = var.aws_region
    }
  }

  backend "s3" {
    bucket = var.s3_bucket_name
    key    = "terraform.tfstate"
    region = var.aws_region
  }

  required_version = ">= 1.0.1"
}