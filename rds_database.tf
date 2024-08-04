# resource "aws_db_instance" "rds_instance" {
#   allocated_storage      = var.allocated_storage
#   engine                 = var.engine
#   engine_version         = var.engine_version
#   instance_class         = var.instance_class
#   identifier             = var.identifier
#   username               = var.username
#   password               = var.password
#   db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name
#   vpc_security_group_ids = [aws_security_group.rds_sg.id]
#   skip_final_snapshot    = var.skip_final_snapshot
#   tags = {
#     Name        = "mysql-dev"
#     Environment = "dev"
#     Provider    = "terraform"
#   }
# }

# resource "aws_db_subnet_group" "rds_subnet_group" {
#   name       = "rds_subnet_group"
#   subnet_ids = [aws_subnet.private_a.id, aws_subnet.private_b.id]
#   tags = {
#     Name        = "RDS Subnet Group"
#     Environment = "dev"
#     Provider    = "terraform"
#   }
# }
