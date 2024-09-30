variable "project_name" {
  type = string
  description = "The project name of the RDS instance"
}

variable "subnet01" {
  description = "The first subnet ID"
  default     = "subnet-0a635f7feeef1a5e4"
}

variable "subnet02" {
  description = "The second subnet ID"
  default     = "subnet-0ef6045943cde9504"
}

variable "subnet03" {
  description = "The third subnet ID"
  default     = "subnet-0927648c135b99e3b"
}