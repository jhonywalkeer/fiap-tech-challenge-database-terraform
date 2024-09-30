variable "dynamodb_name" {
  type = string
  description = "The name of the DynamoDB table"
  default     = "fiap-tech-challenge-dynamo"
}

variable "environment" {
  type = string
  description = "The environment of the DynamoDB table"
}

variable "dynamodb_billing_mode" {
  type = string
  description = "The billing mode of the DynamoDB table"
  default     = "PROVISIONED"
  
}

variable "dynamodb_hash_key" {
  type = string
  description = "The hash key of the DynamoDB table"
  default     = "cpf"
  
}

variable "dynamodb_read_capacity" {
  type = numbers
  description = "The read capacity of the DynamoDB table"
  default     = 20
  
}

variable "dynamodb_write_capacity" {
  type = number
  description = "The write capacity of the DynamoDB table"
  default     = 20
  
}

