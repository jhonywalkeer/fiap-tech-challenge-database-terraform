variable "environment" {
  description = "The environment to deploy the resources"
  default     = "dev"
}

variable "aws_region" {
  description = "The AWS region to deploy the resources"
  default     = "us-east-1"
  
}

variable "project_tags" {
  description = "The tags to be applied to the resources"
  type        = map(string)
  default     = {
    Name        = "fiap-tech-challenge-db"
    Environment = "dev"
  }
}

variable "project_name" {
  description = "The name of the project"
  default     = "fiap-tech-challenge"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  default     = "fiap-tech-challenge-terraform-state"
  
}