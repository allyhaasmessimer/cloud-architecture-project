module "security_groups" {
  source = "../../security_groups"
}

resource "aws_db_instance" "default" {
  allocated_storage    = var.db_allocated_storage
  engine               = "mysql"
  instance_class       = var.db_instance_class
  identifier           = var.db_name
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  vpc_security_group_ids = [module.security_groups.rds_security_group_id]
}
