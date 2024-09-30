resource "aws_db_subnet_group" "subnet-rds" {
  name = "subnet-rds-${var.project_name}"
  subnet_ids = ["${var.subnet01}", "${var.subnet02}", "${var.subnet03}"]
}