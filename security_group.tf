resource "aws_security_group" "ec2_sg" {
  name        = "EC2SecurityGroup"
  description = "Security group for EC2 instance"
  vpc_id      = aws_vpc.vpcname_dev.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


# resource "aws_security_group" "rds_sg" {
#   name        = "rds_sg"
#   description = "Security group for RDS"
#   vpc_id      = aws_vpc.vpcname_dev.id
#   ingress {
#     from_port   = 3306
#     to_port     = 3306
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }
