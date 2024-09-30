resource "aws_dynamodb_table" "users" {
  name           = "${var.dynamodb_name}-${var.environment}"
  billing_mode   = var.dynamodb_billing_mode
  read_capacity  = var.dynamodb_read_capacity
  write_capacity = var.dynamodb_write_capacity

  attribute {
    name = "cpf"
    type = "S"
  }

  hash_key       = var.dynamodb_hash_key
}