variable "project_name" {
  type = string
  description = "The project name of the RDS instance"
}

variable "security_group_prefix" {
  type = string
  description = "The prefix of the security group"
  default = "SG"
}

variable "security_group_vpc" {
  type = string
  description = "The VPC ID"
  default     = "vpc-0fbc5db95c8c95174"
}

variable "security_group_port" {
  type = number
  description = "The port of the security group"
  default     = 5432
  
}

variable "security_group_protocol" {
  type = string
  description = "The protocol of the security group"
  default     = "tcp"
}

variable "security_group_vpc_CIDR" {
  type = string
  description = "The CIDR block of the VPC"
  default     = "172.31.0.0/16"
}