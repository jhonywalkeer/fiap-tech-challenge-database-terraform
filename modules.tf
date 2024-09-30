module "dynamo" {
  source = "../modules/database/dynamo"

  dynamodb_name = var.dynamodb_name
  dynamodb_billing_mode = var.dynamodb_billing_mode
  dynamodb_hash_key = var.dynamodb_hash_key
  dynamodb_read_capacity = var.dynamodb_read_capacity
  dynamodb_write_capacity = var.dynamodb_write_capacity
  project_tags = var.project_tags
  project_name = var.project_name
  aws_region = var.aws_region
}

module "rds" {
  source = "../modules/database/rds"

  rds_name = var.rds_name
  rds_engine = var.rds_engine
  rds_engine_version = var.rds_engine_version
  rds_user = var.rds_user
  rds_pass = var.rds_pass
  rds_instance_class = var.rds_instance_class
  rds_storage_type = var.rds_storage_type
  rds_min_storage = var.rds_min_storage
  rds_max_storage = var.rds_max_storage
  rds_backup_retention = var.rds_backup_retention
  rds_backup_window = var.rds_backup_window
  project_tags = var.project_tags
  project_name = var.project_name
  aws_region = var.aws_region
}

module "security_group" {
  source = "../modules/networks/security-groups"

  security_group_prefix = var.security_group_prefix
  security_group_vpc = var.security_group_vpc
  security_group_vpc_CIDR = var.security_group_vpc_CIDR
  security_group_port = var.security_group_port
  security_group_protocol = var.security_group_protocol
  project_name = var.project_name
}