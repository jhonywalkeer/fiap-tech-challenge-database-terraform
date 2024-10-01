module "dynamo" {
  source = "./modules/database/"
}

module "rds" {
  source = "./modules/database/"
}

module "security_group" {
  source = "./modules/networks/"
}