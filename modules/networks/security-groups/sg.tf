resource "aws_security_group" "sg-rds" {
  name        = "${security_group_prefix}-${var.project_name}-rds"
  description = var.project_name
  vpc_id      = var.security_group_vpc

  ingress {
    description = "VPC"
    from_port   = var.security_group_port
    to_port     = var.security_group_port
    protocol    = var.security_group_protocol
    cidr_blocks = ["${var.security_group_vpc_CIDR}"]
  }

  egress {
    description = "VPC"
    from_port   = var.security_group_port
    to_port     = var.security_group_port
    protocol    = var.security_group_protocol
    cidr_blocks = ["${var.security_group_vpc_CIDR}"]
  }
}
